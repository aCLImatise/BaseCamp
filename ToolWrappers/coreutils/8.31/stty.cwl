class: CommandLineTool
id: stty.cwl
inputs:
- id: in_all
  doc: print all current settings in human-readable form
  type: boolean
  inputBinding:
    prefix: --all
- id: in_save
  doc: print all current settings in a stty-readable form
  type: boolean
  inputBinding:
    prefix: --save
- id: in_file
  doc: open and use the specified DEVICE instead of stdin
  type: File
  inputBinding:
    prefix: --file
- id: in_var_3
  doc: same as icanon
  type: boolean
  inputBinding:
    prefix: -cbreak
- id: in_same_as_raw
  doc: same as raw
  type: boolean
  inputBinding:
    prefix: -cooked
- id: in_var_5
  doc: same as -parenb cs8
  type: boolean
  inputBinding:
    prefix: -evenp
- id: in_var_6
  doc: same as parenb istrip opost cs7
  type: boolean
  inputBinding:
    prefix: -litout
- id: in_same_icrnl_inlcr
  doc: same as icrnl -inlcr -igncr onlcr -ocrnl -onlret
  type: boolean
  inputBinding:
    prefix: -nl
- id: in_var_8
  doc: same as -parenb cs8
  type: boolean
  inputBinding:
    prefix: -oddp
- id: in_pass_eight
  doc: "same as parenb istrip cs7\nraw           same as -ignbrk -brkint -ignpar -parmrk\
    \ -inpck -istrip\n-inlcr -igncr -icrnl -ixon -ixoff -icanon -opost\n-isig -iuclc\
    \ -ixany -imaxbel -xcase min 1 time 0\n-raw          same as cooked\nsane    \
    \      same as cread -ignbrk brkint -inlcr -igncr icrnl\nicanon iexten echo echoe\
    \ echok -echonl -noflsh\n-ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl\n\
    opost -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0\nisig -tostop -ofdel\
    \ -echoprt echoctl echoke -flusho,\nall special characters to their default values"
  type: boolean
  inputBinding:
    prefix: -pass8
- id: in_speed
  doc: print the terminal speed
  type: string
  inputBinding:
    position: 0
- id: in_csn
  doc: set character size to N bits, N in [5..8]
  type: string
  inputBinding:
    position: 0
- id: in_var_12
  doc: same as -icanon
  type: string
  inputBinding:
    position: 0
- id: in_same_brkint_ignpar
  doc: "same as brkint ignpar istrip icrnl ixon opost isig\nicanon, eof and eol characters\
    \ to their default values"
  type: string
  inputBinding:
    position: 1
- id: in_crt
  doc: same as echoe echoctl echoke
  type: string
  inputBinding:
    position: 2
- id: in_dec
  doc: "same as echoe echoctl echoke -ixany intr ^c erase 0177\nkill ^u"
  type: string
  inputBinding:
    position: 3
- id: in_ek
  doc: erase and kill characters to their default values
  type: string
  inputBinding:
    position: 0
- id: in_var_17
  doc: same as parenb -parodd cs7
  type: string
  inputBinding:
    position: 1
- id: in_var_18
  doc: same as -parenb -istrip -opost cs8
  type: string
  inputBinding:
    position: 0
- id: in_same_icrnl_onlcr
  doc: same as -icrnl -onlcr
  type: string
  inputBinding:
    position: 1
- id: in_var_20
  doc: same as parenb parodd cs7
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stty
