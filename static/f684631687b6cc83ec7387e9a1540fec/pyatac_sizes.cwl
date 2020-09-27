class: CommandLineTool
id: pyatac_sizes.cwl
inputs:
- id: in_bam
  doc: Aligned reads
  type: File
  inputBinding:
    prefix: --bam
- id: in_bed
  doc: "Only compute size distribution for fragment centered\nwithin regions in bed\
    \ file"
  type: File
  inputBinding:
    prefix: --bed
- id: in_out
  doc: Basename for output
  type: string
  inputBinding:
    prefix: --out
- id: in_not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
- id: in_lower
  doc: lower limit on insert size. Default is 0
  type: long
  inputBinding:
    prefix: --lower
- id: in_upper
  doc: upper limit on insert size. Default is 500
  type: long
  inputBinding:
    prefix: --upper
- id: in_no_plot
  doc: Don't plot output
  type: boolean
  inputBinding:
    prefix: --no_plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyatac
- sizes
