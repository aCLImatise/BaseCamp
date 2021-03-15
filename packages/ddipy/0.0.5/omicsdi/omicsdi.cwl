class: CommandLineTool
id: omicsdi.cwl
inputs:
- id: in_download
  doc: "Use this flag to download the files in the current\ndirectory or a specified\
    \ output directory"
  type: Directory?
  inputBinding:
    prefix: --download
- id: in_verbose
  doc: Use this flag to display th extensions
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: 'Output directory when downloading files (default: CWD)'
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_input
  doc: 'Output directory when downloading files (default: CWD)'
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_acc_number
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_download
  doc: "Use this flag to download the files in the current\ndirectory or a specified\
    \ output directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_download)
- id: out_output
  doc: 'Output directory when downloading files (default: CWD)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_input
  doc: 'Output directory when downloading files (default: CWD)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_input)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ddipy:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- omicsdi
