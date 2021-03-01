class: CommandLineTool
id: scalpel_discovery.cwl
inputs:
- id: in_verbose
  doc: ': verbose mode'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_single
  doc: ': single exome study'
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_de_novo
  doc: ': family study (mom,dad,affected,sibling)'
  type: boolean?
  inputBinding:
    prefix: --denovo
- id: in_somatic
  doc: ': normal/tumor study'
  type: boolean?
  inputBinding:
    prefix: --somatic
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scalpel-discovery
