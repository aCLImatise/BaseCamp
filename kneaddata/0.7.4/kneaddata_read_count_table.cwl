class: CommandLineTool
id: ../../../kneaddata_read_count_table.cwl
inputs:
- id: input
  doc: the input folder with kneaddata log files
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the output file to write
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- kneaddata_read_count_table
