class: CommandLineTool
id: ../../../rgi_tm.cwl
inputs:
- id: in_var_0
  doc: ''
  type: File
  inputBinding:
    prefix: --input_file
- id: in_clean
  doc: removes temporary files
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_debug
  doc: debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_outputfile__outputfile
  doc: -o OUTPUT_FILE, --output_file OUTPUT_FILE
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: -t FILTER_TEMPERATURE, --filter_temperature FILTER_TEMPERATURE
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- rgi
- tm
