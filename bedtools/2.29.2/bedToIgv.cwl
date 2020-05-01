#!/usr/bin/env cwl-runner

baseCommand:
- bedToIgv
class: CommandLineTool
cwlVersion: v1.0
id: bedtoigv
inputs:
- doc: 'The full path to which the IGV snapshots should be written. (STRING) Default:
    ./'
  id: path
  inputBinding:
    prefix: -path
  type: boolean
- doc: The full path to an existing IGV session file to be  loaded prior to taking
    snapshots. (STRING) Default is for no session to be loaded.
  id: sess
  inputBinding:
    prefix: -sess
  type: boolean
- doc: 'The type of BAM sorting you would like to apply to each image.  Options: base,
    position, strand, quality, sample, and readGroup Default is to apply no sorting
    at all.'
  id: sort
  inputBinding:
    prefix: -sort
  type: boolean
- doc: Collapse the aligned reads prior to taking a snapshot.  Default is to no collapse.
  id: clps
  inputBinding:
    prefix: -clps
  type: boolean
- doc: Use the "name" field (column 4) for each image's filename.  Default is to use
    the "chr:start-pos.ext".
  id: name
  inputBinding:
    prefix: -name
  type: boolean
- doc: Number of flanking base pairs on the left & right of the image. - (INT) Default
    = 0.
  id: slop
  inputBinding:
    prefix: -slop
  type: boolean
- doc: 'The type of image to be created.  Options: png, eps, svg Default is png.'
  id: img
  inputBinding:
    prefix: -img
  type: boolean
