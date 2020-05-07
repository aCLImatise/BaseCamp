class: CommandLineTool
id: stty.cwl
inputs:
- id: n
  doc: set the input and output speeds to N bauds
  type: string
  inputBinding:
    position: 0
- id: c_break
  doc: same as -icanon
  type: string
  inputBinding:
    position: 0
- id: cooked
  doc: same as brkint ignpar istrip icrnl ixon opost isig icanon, eof and eol characters
    to their default values
  type: string
  inputBinding:
    position: 1
- id: crt
  doc: same as echoe echoctl echoke
  type: string
  inputBinding:
    position: 2
- id: dec
  doc: same as echoe echoctl echoke -ixany intr ^c erase 0177 kill ^u
  type: string
  inputBinding:
    position: 3
- id: ek
  doc: erase and kill characters to their default values
  type: string
  inputBinding:
    position: 0
- id: even_p
  doc: same as parenb -parodd cs7
  type: string
  inputBinding:
    position: 1
- id: lit_out
  doc: same as -parenb -istrip -opost cs8
  type: string
  inputBinding:
    position: 0
- id: nl
  doc: same as -icrnl -onlcr
  type: string
  inputBinding:
    position: 1
- id: raw
  doc: same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip -inlcr -igncr -icrnl
    -ixon -ixoff -icanon -opost -isig -iuclc -ixany -imaxbel -xcase min 1 time 0
  type: string
  inputBinding:
    position: 0
- id: sane
  doc: same as cread -ignbrk brkint -inlcr -igncr icrnl icanon iexten echo echoe echok
    -echonl -noflsh -ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl opost
    -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0 isig -tostop -ofdel -echoprt
    echoctl echoke -flusho, all special characters to their default values
  type: string
  inputBinding:
    position: 1
- id: all
  doc: print all current settings in human-readable form
  type: boolean
  inputBinding:
    prefix: --all
- id: save
  doc: print all current settings in a stty-readable form
  type: boolean
  inputBinding:
    prefix: --save
- id: file
  doc: open and use the specified DEVICE instead of stdin
  type: string
  inputBinding:
    prefix: --file
- id: c_break
  doc: same as icanon
  type: boolean
  inputBinding:
    prefix: -cbreak
- id: cooked
  doc: same as raw
  type: boolean
  inputBinding:
    prefix: -cooked
- id: even_p
  doc: same as -parenb cs8
  type: boolean
  inputBinding:
    prefix: -evenp
- id: lit_out
  doc: same as parenb istrip opost cs7
  type: boolean
  inputBinding:
    prefix: -litout
- id: nl
  doc: same as icrnl -inlcr -igncr onlcr -ocrnl -onlret
  type: boolean
  inputBinding:
    prefix: -nl
- id: pass8
  doc: as parenb istrip cs7
  type: string
  inputBinding:
    prefix: -pass8
- id: raw
  doc: same as cooked
  type: boolean
  inputBinding:
    prefix: -raw
outputs: []
cwlVersion: v1.1
baseCommand:
- stty
