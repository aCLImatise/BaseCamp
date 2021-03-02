class: CommandLineTool
id: seq2science_explain.cwl
inputs:
- id: in_config_file
  doc: "The path to the config file.\n"
  type: File?
  inputBinding:
    prefix: --configfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq2science
- explain
