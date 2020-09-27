class: CommandLineTool
id: pyatac_ins.cwl
inputs:
- id: in_bam
  doc: Accepts sorted BAM file
  type: File
  inputBinding:
    prefix: --bam
- id: in_bed
  doc: "Regions in which to get insertions\n--out basename\n--cores int     Number\
    \ of cores to use"
  type: File
  inputBinding:
    prefix: --bed
- id: in_lower
  doc: lower limit on insert size
  type: long
  inputBinding:
    prefix: --lower
- id: in_upper
  doc: upper limit on insert size
  type: long
  inputBinding:
    prefix: --upper
- id: in_smooth
  doc: smoothing window for guassian smoothing. default is no
  type: long
  inputBinding:
    prefix: --smooth
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: in_smoothing
  doc: --not_atac      Don't use atac offsets
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyatac
- ins
