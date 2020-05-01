#!/usr/bin/env cwl-runner

baseCommand:
- convertCoordinates.pl
class: CommandLineTool
cwlVersion: v1.0
id: convertcoordinates.pl
inputs:
- doc: <directory|peaks|tags|bed|gtf> (input is a tag directory, peak file, tags file,
    or BED file, or GTF file)
  id: type
  inputBinding:
    prefix: -type
  type: boolean
- doc: '<#> (Number of CPUs to use, default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '<#> (minimum % of nucleotides that must match, default: 0.1)'
  id: min_match
  inputBinding:
    prefix: -minMatch
  type: boolean
- doc: (input is a tag directory, default)
  id: directory
  inputBinding:
    prefix: -directory
  type: boolean
- doc: (input is a peak file)
  id: peaks
  inputBinding:
    prefix: -peaks
  type: boolean
- doc: (input is a tag file)
  id: tags
  inputBinding:
    prefix: -tags
  type: boolean
- doc: (input is a bed file)
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: (input is a gtf file)
  id: gtf
  inputBinding:
    prefix: -gtf
  type: boolean
