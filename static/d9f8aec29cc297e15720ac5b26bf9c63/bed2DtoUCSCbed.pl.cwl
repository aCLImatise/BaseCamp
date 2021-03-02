class: CommandLineTool
id: bed2DtoUCSCbed.pl.cwl
inputs:
- id: in_ucsc
  doc: (outputs BED12 format for visualizing 2D BED file in the UCSC browser)
  type: boolean?
  inputBinding:
    prefix: -ucsc
- id: in_peaks
  doc: (outputs HOMER-style peak file spanning interaction region)
  type: boolean?
  inputBinding:
    prefix: -peaks
- id: in_interactions
  doc: (outputs HOMER-style interaction file for use with annotateInteractions.pl)
  type: boolean?
  inputBinding:
    prefix: -interactions
- id: in_ends
  doc: (outputs HOMER-style peak files representing the anchor points of each interaction)
  type: boolean?
  inputBinding:
    prefix: -ends
- id: in_two_d_bed_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bed2DtoUCSCbed.pl
