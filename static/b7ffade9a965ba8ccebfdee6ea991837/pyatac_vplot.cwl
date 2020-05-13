class: CommandLineTool
id: pyatac_vplot.cwl
inputs:
- id: bed
  doc: Positions around which to generate VPlot
  type: string
  inputBinding:
    prefix: --bed
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
- id: flank
  doc: how many bases on each side of site (or center of site) to include
  type: long
  inputBinding:
    prefix: --flank
- id: scale
  doc: Scale each site
  type: boolean
  inputBinding:
    prefix: --scale
- id: weight
  doc: column in which weight information is included
  type: long
  inputBinding:
    prefix: --weight
- id: strand
  doc: column in which strand information is included
  type: long
  inputBinding:
    prefix: --strand
- id: not_atac
  doc: Don't use atac offsets
  type: boolean
  inputBinding:
    prefix: --not_atac
- id: no_plot
  doc: Don't plot output
  type: boolean
  inputBinding:
    prefix: --no_plot
- id: plot_extra
  doc: Make some extra plots
  type: boolean
  inputBinding:
    prefix: --plot_extra
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- vplot
