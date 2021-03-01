class: CommandLineTool
id: knot.analysis.hamilton_path.cwl
inputs:
- id: in_input
  doc: path to the AAG
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: path where hamilton path was write
  type: File?
  inputBinding:
    prefix: --output
- id: in_circular
  doc: genome is circular
  type: boolean?
  inputBinding:
    prefix: --circular
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot.analysis.hamilton_path
