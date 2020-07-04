class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/minvar.cwl
inputs:
- id: fast_q
  doc: input reads in fastq format
  type: string
  inputBinding:
    prefix: --fastq
- id: recal
  doc: 'turn on recalibration with GATK <default: False>'
  type: boolean
  inputBinding:
    prefix: --recal
- id: keep
  doc: 'keep intermediate files <default: False>'
  type: boolean
  inputBinding:
    prefix: --keep
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- minvar
