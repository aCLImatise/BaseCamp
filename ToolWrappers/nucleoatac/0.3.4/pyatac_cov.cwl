class: CommandLineTool
id: pyatac_cov.cwl
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
- id: in_window
  doc: "window for flat smoothing of coverage. default is 121,\nshould be odd"
  type: long
  inputBinding:
    prefix: --window
- id: in_scale
  doc: "scaling value. default is 10, corresponding to signal\ncorresponding to #\
    \ of fragment centers per 10 bp. Use 1 for\nfragments per 1 bp."
  type: double
  inputBinding:
    prefix: --scale
- id: in_not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyatac
- cov
