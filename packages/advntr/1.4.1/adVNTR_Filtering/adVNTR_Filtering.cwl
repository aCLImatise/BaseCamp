class: CommandLineTool
id: adVNTR_Filtering.cwl
inputs:
- id: in_min_matches
  doc: Minimum number of matches to accept a read
  type: long?
  inputBinding:
    prefix: --min_matches
- id: in_sequences_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_keywords_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_dot_txt
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
  dockerPull: quay.io/biocontainers/advntr:1.4.1--py27h76bc9d7_0
cwlVersion: v1.1
baseCommand:
- adVNTR-Filtering
