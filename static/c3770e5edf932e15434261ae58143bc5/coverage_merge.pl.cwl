class: CommandLineTool
id: coverage_merge.pl.cwl
inputs:
- id: in_genome_dot_fa_dot_fai
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sample_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_include_list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_at
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- coverage_merge.pl
