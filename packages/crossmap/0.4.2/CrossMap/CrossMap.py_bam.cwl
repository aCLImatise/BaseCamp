class: CommandLineTool
id: CrossMap.py_bam.cwl
inputs:
- id: in_mean
  doc: "Average insert size of pair-end sequencing (bp).\n[default=200.0]"
  type: long?
  inputBinding:
    prefix: --mean
- id: in_stdev
  doc: Stanadard deviation of insert size. [default=30.0]
  type: long?
  inputBinding:
    prefix: --stdev
- id: in_times
  doc: "A mapped pair is considered as \"proper pair\" if both\nends mapped to different\
    \ strand and the distance\nbetween them is less then '-t' * stdev from the mean.\n\
    [default=3.0]"
  type: long?
  inputBinding:
    prefix: --times
- id: in_append_tags
  doc: Add tag to each alignment.
  type: boolean?
  inputBinding:
    prefix: --append-tags
- id: in_chain_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- CrossMap.py
- bam
