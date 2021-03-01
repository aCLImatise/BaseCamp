class: CommandLineTool
id: kneaddata_read_count_table.cwl
inputs:
- id: in_input
  doc: the input folder with kneaddata log files
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: the output file to write
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: the output file to write
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- kneaddata_read_count_table
