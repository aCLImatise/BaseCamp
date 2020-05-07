class: CommandLineTool
id: pyatac_cov.cwl
inputs:
- id: bam
  doc: Accepts sorted BAM file
  type: string
  inputBinding:
    prefix: --bam
- id: cores
  doc: Number of cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: lower
  doc: lower limit on insert size
  type: long
  inputBinding:
    prefix: --lower
- id: upper
  doc: upper limit on insert size
  type: long
  inputBinding:
    prefix: --upper
- id: window
  doc: window for flat smoothing of coverage. default is 121, should be odd
  type: long
  inputBinding:
    prefix: --window
- id: scale
  doc: 'scaling value. default is 10, corresponding to signal corresponding to # of
    fragment centers per 10 bp. Use 1 for fragments per 1 bp.'
  type: double
  inputBinding:
    prefix: --scale
- id: not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- cov
