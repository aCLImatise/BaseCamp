#!/usr/bin/env cwl-runner

baseCommand:
- tagDir2bed.pl
class: CommandLineTool
cwlVersion: v1.0
id: tagdir2bed.pl
inputs:
- doc: '<#> (read length to report, default: given sizes in tags.tsv file)'
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: (report separate BED reads if there are multiple reads per position)
  id: separate
  inputBinding:
    prefix: -separate
  type: boolean
