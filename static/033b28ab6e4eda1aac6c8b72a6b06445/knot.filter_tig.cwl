class: CommandLineTool
id: knot.filter_tig.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_filter_contig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot.filter_tig
