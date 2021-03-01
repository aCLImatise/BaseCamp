class: CommandLineTool
id: NCBImeta.py.cwl
inputs:
- id: in_config
  doc: Path to the yaml configuration file (ex. config.yaml).
  type: File?
  inputBinding:
    prefix: --config
- id: in_flat
  doc: Don't create sub-directories in output directory.
  type: Directory?
  inputBinding:
    prefix: --flat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_flat
  doc: Don't create sub-directories in output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_flat)
hints: []
cwlVersion: v1.1
baseCommand:
- NCBImeta.py
