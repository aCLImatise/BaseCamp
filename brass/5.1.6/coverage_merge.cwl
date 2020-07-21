class: CommandLineTool
id: ../../../coverage_merge.pl.cwl
inputs:
- id: genome_dot_fa_dot_fai
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: include_list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: at
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage_merge.pl
