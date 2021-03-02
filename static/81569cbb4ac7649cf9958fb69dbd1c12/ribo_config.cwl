class: CommandLineTool
id: ribo_config.cwl
inputs:
- id: in_outdir
  doc: 'output directory; default: /'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_name
  doc: 'name of config file; default: timestamped'
  type: File?
  inputBinding:
    prefix: --name
- id: in_ribo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'output directory; default: /'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- ribo
- config
