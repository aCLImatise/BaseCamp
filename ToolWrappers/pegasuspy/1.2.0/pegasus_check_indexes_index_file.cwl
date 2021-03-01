class: CommandLineTool
id: pegasus_check_indexes_index_file.cwl
inputs:
- id: in_report
  doc: ''
  type: string?
  inputBinding:
    prefix: --report
- id: in_num_mismatch
  doc: ''
  type: long?
  inputBinding:
    prefix: --num-mismatch
- id: in_pegasus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_check_indexes
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- check_indexes
- index_file
