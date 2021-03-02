class: CommandLineTool
id: knot.sg_generation_output.cwl
inputs:
- id: in_knot_dots_g_generation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_two_contig
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_input
  doc: ''
  type: string
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
- knot.sg_generation
- output
