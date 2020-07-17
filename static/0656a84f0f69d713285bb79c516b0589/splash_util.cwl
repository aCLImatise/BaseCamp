class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splash_util.conversionrate.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: region
  doc: ''
  type: string
  inputBinding:
    prefix: -region
- id: rev
  doc: ''
  type: boolean
  inputBinding:
    prefix: -rev
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- util.conversionrate
