class: CommandLineTool
id: bedtools_igv.cwl
inputs:
- id: path
  doc: 'The full path to which the IGV snapshots should be written. (STRING) Default:
    ./'
  type: boolean
  inputBinding:
    prefix: -path
- id: sess
  doc: The full path to an existing IGV session file to be  loaded prior to taking
    snapshots. (STRING) Default is for no session to be loaded.
  type: boolean
  inputBinding:
    prefix: -sess
- id: sort
  doc: 'The type of BAM sorting you would like to apply to each image.  Options: base,
    position, strand, quality, sample, and readGroup Default is to apply no sorting
    at all.'
  type: boolean
  inputBinding:
    prefix: -sort
- id: clps
  doc: Collapse the aligned reads prior to taking a snapshot.  Default is to no collapse.
  type: boolean
  inputBinding:
    prefix: -clps
- id: name
  doc: Use the "name" field (column 4) for each image's filename.  Default is to use
    the "chr:start-pos.ext".
  type: boolean
  inputBinding:
    prefix: -name
- id: slop
  doc: Number of flanking base pairs on the left & right of the image. - (INT) Default
    = 0.
  type: boolean
  inputBinding:
    prefix: -slop
- id: img
  doc: 'The type of image to be created.  Options: png, eps, svg Default is png.'
  type: boolean
  inputBinding:
    prefix: -img
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- igv
