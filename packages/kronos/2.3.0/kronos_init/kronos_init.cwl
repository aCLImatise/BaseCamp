class: CommandLineTool
id: kronos_init.cwl
inputs:
- id: in_pipeline_name
  doc: a name for the resultant pipeline
  type: string
  inputBinding:
    prefix: --pipeline_name
- id: in_input_samples
  doc: path to the samples file
  type: File
  inputBinding:
    prefix: --input_samples
- id: in_setup_file
  doc: path to the setup file
  type: File
  inputBinding:
    prefix: --setup_file
- id: in_config_file
  doc: "path to the config_file.yaml\n"
  type: File
  inputBinding:
    prefix: --config_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kronos
- init
