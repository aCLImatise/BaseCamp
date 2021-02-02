class: CommandLineTool
id: ../../../qpAdm.cwl
inputs:
- id: in_use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: in_print_version_exit
  doc: '... print version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qpAdm
