class: CommandLineTool
id: pyatac_ins.cwl
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
- id: smooth
  doc: smoothing window for guassian smoothing. default is no smoothing
  type: long
  inputBinding:
    prefix: --smooth
- id: not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- ins
