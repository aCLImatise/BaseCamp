class: CommandLineTool
id: bbmerge.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage,\noverriding autodetection.\nFor example,\
    \ -Xmx400m will specify 400 MB RAM."
  type: boolean?
  inputBinding:
    prefix: -Xmx
- id: in_e_oom
  doc: "This flag will cause the process to exit if an\nout-of-memory exception occurs.\
    \  Requires Java 8u92+."
  type: boolean?
  inputBinding:
    prefix: -eoom
- id: in_da
  doc: Disable assertions.
  type: boolean?
  inputBinding:
    prefix: -da
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bbmerge.sh
