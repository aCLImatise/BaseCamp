class: CommandLineTool
id: knot.extremity_search_read2read.cwl
inputs:
- id: in_knot_dot_extremity_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_two_tig
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_read_two_read
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot.extremity_search
- read2read
