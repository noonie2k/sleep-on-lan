require 'socket'
require 'macaddr'

magic_packet = [255, 255, 255, 255, 255, 255]
mac = Mac.addr.split(':')
16.times {
    mac.each { |part| magic_packet << part.hex }
} 

s = UDPSocket.new
s.bind('0.0.0.0', 9)
BasicSocket.do_not_reverse_lookup = true
message = s.recvfrom(102)

if message[0].bytes == magic_packet
    `shutdown -h now`
end
