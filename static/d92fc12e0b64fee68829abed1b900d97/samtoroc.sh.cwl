class: CommandLineTool
id: ../../../samtoroc.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage, overriding autodetection.\n-Xmx20g will\
    \ specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically\
    \ 85% of physical memory."
  type: boolean
  inputBinding:
    prefix: -Xmx
- id: in_e_oom
  doc: "This flag will cause the process to exit if an out-of-memory\nexception occurs.\
    \  Requires Java 8u92+."
  type: boolean
  inputBinding:
    prefix: -eoom
- id: in_da
  doc: Disable assertions.
  type: boolean
  inputBinding:
    prefix: -da
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtoroc.sh
