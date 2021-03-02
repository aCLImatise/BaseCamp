class: CommandLineTool
id: removebadbarcodes.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage, overriding autodetection.\n-Xmx20g will\
    \ specify 20 gigs of RAM, and -Xmx800m will specify 800 megs.\nThe max is typically\
    \ 85% of physical memory."
  type: boolean?
  inputBinding:
    prefix: -Xmx
- id: in_e_oom
  doc: "This flag will cause the process to exit if an out-of-memory\nexception occurs.\
    \  Requires Java 8u92+."
  type: boolean?
  inputBinding:
    prefix: -eoom
- id: in_da
  doc: Disable assertions.
  type: boolean?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- removebadbarcodes.sh
