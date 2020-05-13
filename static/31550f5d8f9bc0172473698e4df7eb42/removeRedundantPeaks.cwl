class: CommandLineTool
id: removeRedundantPeaks.pl.cwl
inputs:
- id: blat
  doc: <#> (Where % is the percentage match to be considered redundant, default=0.33)
  type: boolean
  inputBinding:
    prefix: -blat
- id: size
  doc: <#> (size of peaks to be used for sequence similarity, default=given)
  type: boolean
  inputBinding:
    prefix: -size
- id: genome
  doc: (genome for extracting sequence)
  type: Directory
  inputBinding:
    prefix: -genome
- id: mask
  doc: (use repeat masked sequence)
  type: boolean
  inputBinding:
    prefix: -mask
outputs: []
cwlVersion: v1.1
baseCommand:
- removeRedundantPeaks.pl
