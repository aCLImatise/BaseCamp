class: CommandLineTool
id: hp_demo.cwl
inputs:
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: ref_only
  doc: 'Does not run entire demo, only pulls the reference files (default: False)'
  type: boolean
  inputBinding:
    prefix: --refonly
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_demo
