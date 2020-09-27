class: CommandLineTool
id: import_igenome.cwl
inputs:
- id: in_path
  doc: path to the desired genome tarball or directory to
  type: File
  inputBinding:
    prefix: --path
- id: in_config
  doc: "path to local genome configuration file. Optional if\n'REFGENIE' environment\
    \ variable is set.\n"
  type: File
  inputBinding:
    prefix: --config
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_integrate
  doc: -g GENOME, --genome GENOME
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- import_igenome
