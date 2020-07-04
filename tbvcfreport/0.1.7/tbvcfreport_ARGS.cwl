class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tbvcfreport_ARGS.cwl
inputs:
- id: tb_vcf_report
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tbvcfreport
- ARGS
