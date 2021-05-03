class: CommandLineTool
id: interop_aggregate.cwl
inputs:
- id: in_max_tile
  doc: '[0]: Maximum tile number to include'
  type: boolean?
  inputBinding:
    prefix: --max-tile
- id: in_option_two
  doc: ''
  type: long?
  inputBinding:
    prefix: --option2
- id: in_option_one
  doc: ''
  type: long?
  inputBinding:
    prefix: --option1
- id: in_run_folder
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
  dockerPull: quay.io/biocontainers/illumina-interop:1.1.23--h1b792b2_0
cwlVersion: v1.1
baseCommand:
- interop_aggregate
