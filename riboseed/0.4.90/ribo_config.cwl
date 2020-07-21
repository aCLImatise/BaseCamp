class: CommandLineTool
id: ../../../ribo_config.cwl
inputs:
- id: outdir
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --outdir
- id: name
  doc: 'name of config file; default: timestamped'
  type: string
  inputBinding:
    prefix: --name
- id: ribo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- config
