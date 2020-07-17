class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/varscan_processSomatic.cwl
inputs:
- id: min_tumor_freq
  doc: '- Minimum variant allele frequency in tumor [0.10]'
  type: boolean
  inputBinding:
    prefix: --min-tumor-freq
- id: max_normal_freq
  doc: '- Maximum variant allele frequency in normal [0.05]'
  type: boolean
  inputBinding:
    prefix: --max-normal-freq
- id: p_value
  doc: '- P-value for high-confidence calling [0.07]'
  type: boolean
  inputBinding:
    prefix: --p-value
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: process
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: status_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- processSomatic
