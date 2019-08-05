import sys
with  open('%s' % sys.argv[1],'r') as src:
    with open('%s' % sys.argv[2],'w') as des:
        while 1:

            data = src.readline()

            if not  data:
                break
            data += '\r\n'
            des.write(data)