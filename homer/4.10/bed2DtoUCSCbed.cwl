class: CommandLineTool
id: bed2DtoUCSCbed.pl.cwl
inputs:
- id: ucsc
  doc: (outputs BED12 format for visualizing 2D BED file in the UCSC browser)
  type: boolean
  inputBinding:
    prefix: -ucsc
- id: peaks
  doc: (outputs HOMER-style peak file spanning interaction region)
  type: boolean
  inputBinding:
    prefix: -peaks
- id: interactions
  doc: (outputs HOMER-style interaction file for use with annotateInteractions.pl)
  type: boolean
  inputBinding:
    prefix: -interactions
- id: ends
  doc: (outputs HOMER-style peak files representing the anchor points of each interaction)
  type: boolean
  inputBinding:
    prefix: -ends
outputs: []
cwlVersion: v1.1
baseCommand:
- bed2DtoUCSCbed.pl
