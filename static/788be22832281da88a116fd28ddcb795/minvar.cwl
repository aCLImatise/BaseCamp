class: CommandLineTool
id: minvar.cwl
inputs:
- id: in_fast_q
  doc: input reads in fastq format
  type: string?
  inputBinding:
    prefix: --fastq
- id: in_recal
  doc: 'turn on recalibration with GATK <default: False>'
  type: boolean?
  inputBinding:
    prefix: --recal
- id: in_keep
  doc: 'keep intermediate files <default: False>'
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- minvar
