do
--create by WaderTG ID CHANNEL : @WaderTGTeam
function run(msg, matches)
local reply_id = msg['id']

local info = '#Name : '..msg.from.first_name..'\n===================\n'
..'#Last name : '..(msg.from.last_name or '')..'\n===================\n'
..'#Id : '..msg.from.id..'\n===================\n'
..'#Phone : +'..(msg.from.phone or '')..'\n===================\n'
..'#Username : telegram.me/'..(msg.from.username or '')..'\n===================\n'
..'#Group Id : '..msg.to.id..'\n===================\n'
..'#Group name : '..msg.to.title..'\n===================\n@sudo_star'

reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^[!/#]me"
--create by star ID powerby : @sudo_star
},
run = run
}

end
