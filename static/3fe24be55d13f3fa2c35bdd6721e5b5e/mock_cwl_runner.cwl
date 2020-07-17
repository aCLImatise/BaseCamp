class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mock_cwl_runner.cwl
inputs:
- id: outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- mock-cwl-runner
