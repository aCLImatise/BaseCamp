class: CommandLineTool
id: interop_index_summary.cwl
inputs:
- id: in_csv
  doc: '[0]: Format output as CSV only'
  type: boolean?
  inputBinding:
    prefix: --csv
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
- interop_index-summary
