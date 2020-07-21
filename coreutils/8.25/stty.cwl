class: CommandLineTool
id: ../../../stty.cwl
inputs:
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
- id: var_3
  doc: same as icanon
  type: boolean
  inputBinding:
    prefix: -cbreak
- id: same_as_raw
  doc: same as raw
  type: boolean
  inputBinding:
    prefix: -cooked
- id: same_parenb_cs
  doc: same as -parenb cs8
  type: boolean
  inputBinding:
    prefix: -evenp
- id: var_6
  doc: same as parenb istrip opost cs7
  type: boolean
  inputBinding:
    prefix: -litout
- id: same_ocrnl_onlret
  doc: same as icrnl -inlcr -igncr onlcr -ocrnl -onlret
  type: boolean
  inputBinding:
    prefix: -nl
- id: pass_eight
  doc: as parenb istrip cs7
  type: string
  inputBinding:
    prefix: -pass8
- id: same_as_cooked
  doc: same as cooked
  type: boolean
  inputBinding:
    prefix: -raw
- id: set_input_speeds
  doc: set the input and output speeds to N bauds
  type: string
  inputBinding:
    position: 0
- id: var_11
  doc: same as -icanon
  type: string
  inputBinding:
    position: 0
- id: same_brkint_ignpar
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
- id: same_parenb_parodd
  doc: same as parenb -parodd cs7
  type: string
  inputBinding:
    position: 1
- id: var_17
  doc: same as -parenb -istrip -opost cs8
  type: string
  inputBinding:
    position: 0
- id: same_icrnl_onlcr
  doc: same as -icrnl -onlcr
  type: string
  inputBinding:
    position: 1
- id: same_ignbrk_brkint
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
outputs: []
cwlVersion: v1.1
baseCommand:
- stty
