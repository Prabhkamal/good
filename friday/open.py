
import os

from fridaybot import CMD_HELP
from fridaybot.utils import admin_cmd, sudo_cmd


@bot.on(admin_cmd(pattern=r"open", outgoing=True))
@bot.on(sudo_cmd(pattern=r"open"))
async def _(event):
    b = await event.client.download_media(await event.get_reply_message())
    a = open(b, "r")
    c = a.read()
    a.close()
    a = await event.reply("**Reading file...**")
    if len(c) > 4095:
        await a.edit("`The Total words in this file is more than telegram limits.`")
    else:
        await event.client.send_message(event.chat_id, f"```{c}```")
        await a.delete()
    os.remove(b)


CMD_HELP.update(
    {
        "open": ".open <reply to a file>\nUse - Read contents of file and send as a telegram message."
    }
)
