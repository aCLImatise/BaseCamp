class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/GapCloser.cwl
inputs:
- id: string_input_file_name
  doc: <string>        input scaffold file name, required.
  type: boolean
  inputBinding:
    prefix: -a
- id: string_info_file_name
  doc: <string>        input library info file name, required.
  type: boolean
  inputBinding:
    prefix: -b
- id: string_output_file_name
  doc: <string>        output file name, required.
  type: boolean
  inputBinding:
    prefix: -o
- id: int_maximum_read
  doc: <int>           maximum read length (<=155), default=100.
  type: boolean
  inputBinding:
    prefix: -l
- id: int_overlap_param
  doc: <int>           overlap param(<=31), default=25.
  type: boolean
  inputBinding:
    prefix: -p
- id: int_thread_number
  doc: <int>           thread number, default=1.
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- GapCloser
