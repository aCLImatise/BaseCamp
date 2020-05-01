#!/usr/bin/env cwl-runner

baseCommand:
- bed2DtoUCSCbed.pl
class: CommandLineTool
cwlVersion: v1.0
id: bed2dtoucscbed.pl
inputs:
- doc: (outputs BED12 format for visualizing 2D BED file in the UCSC browser)
  id: ucsc
  inputBinding:
    prefix: -ucsc
  type: boolean
- doc: (outputs HOMER-style peak file spanning interaction region)
  id: peaks
  inputBinding:
    prefix: -peaks
  type: boolean
- doc: (outputs HOMER-style interaction file for use with annotateInteractions.pl)
  id: interactions
  inputBinding:
    prefix: -interactions
  type: boolean
- doc: (outputs HOMER-style peak files representing the anchor points of each interaction)
  id: ends
  inputBinding:
    prefix: -ends
  type: boolean
