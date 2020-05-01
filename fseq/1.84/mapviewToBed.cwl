#!/usr/bin/env cwl-runner

baseCommand:
- mapviewToBed.pl
class: CommandLineTool
cwlVersion: v1.0
id: mapviewtobed.pl
inputs:
- doc: = Exclude alignments with <= this mapping quality score.
  id: min_qual
  inputBinding:
    position: 0
  type: long
- doc: = Exclude alignments with > this number of hits.
  id: max_hits
  inputBinding:
    position: 1
  type: long
- doc: = Mapview file to convert.
  id: file
  inputBinding:
    position: 2
  type: File
