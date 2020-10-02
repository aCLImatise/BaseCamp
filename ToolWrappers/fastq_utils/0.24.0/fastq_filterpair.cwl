class: CommandLineTool
id: fastq_filterpair.cwl
inputs:
- id: in_filter_pair
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_q_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_fast_q_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_paired_one
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_paired_two
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_unpaired
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sorted
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_filterpair
