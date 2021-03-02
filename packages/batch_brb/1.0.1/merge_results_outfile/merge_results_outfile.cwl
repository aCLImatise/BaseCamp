class: CommandLineTool
id: merge_results_outfile.cwl
inputs:
- id: in_merge_results
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_outfile
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
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- merge_results
- outfile
