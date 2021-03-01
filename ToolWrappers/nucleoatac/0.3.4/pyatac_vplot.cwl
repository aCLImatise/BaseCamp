class: CommandLineTool
id: pyatac_vplot.cwl
inputs:
- id: in_bed
  doc: Positions around which to generate VPlot
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bam
  doc: Accepts sorted BAM file
  type: File?
  inputBinding:
    prefix: --bam
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
- id: in_flank
  doc: how many bases on each side of site (or center of site) to
  type: long?
  inputBinding:
    prefix: --flank
- id: in_weight
  doc: column in which weight information is included
  type: long?
  inputBinding:
    prefix: --weight
- id: in_strand
  doc: column in which strand information is included
  type: long?
  inputBinding:
    prefix: --strand
- id: in_not_atac
  doc: Don't use atac offsets
  type: boolean?
  inputBinding:
    prefix: --not_atac
- id: in_no_plot
  doc: Don't plot output
  type: boolean?
  inputBinding:
    prefix: --no_plot
- id: in_plot_extra
  doc: Make some extra plots
  type: boolean?
  inputBinding:
    prefix: --plot_extra
- id: in_include
  doc: --scale         Scale each site
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
- vplot
