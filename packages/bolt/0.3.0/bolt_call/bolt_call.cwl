class: CommandLineTool
id: bolt_call.cwl
inputs:
- id: in_sample_file_path
  doc: sample file path (*required)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_reference_file_path
  doc: reference file path (*required)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_output_path_required
  doc: output path (*required)
  type: File
  inputBinding:
    prefix: -o
- id: in_number_threads_use
  doc: number of threads to use
  type: boolean
  inputBinding:
    prefix: -t
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path_required
  doc: output path (*required)
  type: File
  outputBinding:
    glob: $(inputs.in_output_path_required)
cwlVersion: v1.1
baseCommand:
- bolt
- call
