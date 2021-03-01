class: CommandLineTool
id: CMVJson.cwl
inputs:
- id: in_input_model_file
  doc: Path to input
  type: File?
  inputBinding:
    prefix: --inputmodelfile
- id: in_output_directory_path
  doc: Path to output directory
  type: File?
  inputBinding:
    prefix: --outputdirectorypath
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_path
  doc: Path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_directory_path)
hints: []
cwlVersion: v1.1
baseCommand:
- CMVJson
