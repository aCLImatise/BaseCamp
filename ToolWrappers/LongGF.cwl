class: CommandLineTool
id: LongGF.cwl
inputs:
- id: in_input_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_gtf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_min_overlap_len
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_bin_size
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_min_map_len
  doc: ''
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LongGF
