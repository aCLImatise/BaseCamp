class: CommandLineTool
id: dedup.cwl
inputs:
- id: in_input
  doc: "the input file if this option is not specified,\nthe input is expected to\
    \ be piped in"
  type: File?
  inputBinding:
    prefix: --input
- id: in_merged
  doc: "the input only contains merged reads.\nIf this option is specified read names\
    \ are not\nexamined for prefixes.\nBoth the start and end of the aligment are\
    \ considered\nfor all reads."
  type: boolean?
  inputBinding:
    prefix: --merged
- id: in_output
  doc: the output folder. Has to be specified if input is
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_ded_up
  doc: -h,--help           show this help page
  type: string
  inputBinding:
    position: 0
- id: in_set_dot
  doc: -u,--unsorted       Do not automatically sort the output
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dedup:0.12.8--0
cwlVersion: v1.1
baseCommand:
- dedup
