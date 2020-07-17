class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qpAdm.cwl
inputs:
- id: use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: print_version_exit
  doc: '... print version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- qpAdm
