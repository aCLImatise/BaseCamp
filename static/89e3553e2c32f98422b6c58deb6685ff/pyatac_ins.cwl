class: CommandLineTool
id: pyatac_ins.cwl
inputs:
- id: in_bam
  doc: Accepts sorted BAM file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_bed
  doc: Regions in which to get insertions
  type: File?
  inputBinding:
    prefix: --bed
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_lower
  doc: lower limit on insert size
  type: long?
  inputBinding:
    prefix: --lower
- id: in_upper
  doc: upper limit on insert size
  type: long?
  inputBinding:
    prefix: --upper
- id: in_smooth
  doc: smoothing window for guassian smoothing. default is no
  type: long?
  inputBinding:
    prefix: --smooth
- id: in_smoothing
  doc: --not_atac      Don't use atac offsets
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyatac
- ins
