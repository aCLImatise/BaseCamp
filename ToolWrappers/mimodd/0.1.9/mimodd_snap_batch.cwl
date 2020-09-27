class: CommandLineTool
id: mimodd_snap_batch.cwl
inputs:
- id: in_one_more_completely
  doc: "\"COMMAND\" [\"COMMAND\" ...]\none or more completely specified command line\
    \ calls to\nthe snap tool (use \"\" to enclose individual lines)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_input_file_completely
  doc: "an input file of completely specified command line\ncalls to the snap tool\n"
  type: File
  inputBinding:
    prefix: -f
- id: in_snap_batch
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mimodd
- snap-batch
