class: CommandLineTool
id: fermi_merge.cwl
inputs:
- id: in_force_overwrite_file
  doc: force to overwrite the output file (effective with -o)
  type: File
  inputBinding:
    prefix: -f
- id: in_output_file_name
  doc: output file name [null]
  type: File
  inputBinding:
    prefix: -o
- id: in_number_threads_use
  doc: number of threads to use
  type: long
  inputBinding:
    prefix: -t
- id: in_in_zero_dot_bwt
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_one_dot_bwt
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_file
  doc: force to overwrite the output file (effective with -o)
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite_file)
- id: out_output_file_name
  doc: output file name [null]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- fermi
- merge
