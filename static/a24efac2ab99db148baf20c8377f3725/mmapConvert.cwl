class: CommandLineTool
id: ../../../mmapConvert.cwl
inputs:
- id: output_file
  doc: output file
  type: string
  inputBinding:
    prefix: -o
- id: file_do_tm_hap
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mmapConvert
