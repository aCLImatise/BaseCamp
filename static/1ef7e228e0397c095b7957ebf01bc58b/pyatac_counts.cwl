class: CommandLineTool
id: pyatac_counts.cwl
inputs:
- id: bam
  doc: Aligned reads
  type: string
  inputBinding:
    prefix: --bam
- id: bed
  doc: Windows in which to compute counts
  type: string
  inputBinding:
    prefix: --bed
- id: out
  doc: Basename for output
  type: string
  inputBinding:
    prefix: --out
- id: not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
- id: lower
  doc: lower limit on insert size. Default is 0
  type: long
  inputBinding:
    prefix: --lower
- id: upper
  doc: upper limit on insert size. Default is 500
  type: long
  inputBinding:
    prefix: --upper
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- counts
