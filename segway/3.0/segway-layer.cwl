#!/usr/bin/env cwl-runner

baseCommand:
- segway-layer
class: CommandLineTool
cwlVersion: v1.0
id: segway-layer
inputs:
- doc: specify bigBed output file
  id: big_bed
  inputBinding:
    prefix: --bigBed
  type: File
- doc: specify tab-delimited input file with mnemonic replacement identifiers for
    segment labels
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: don't recolor labels
  id: no_re_color
  inputBinding:
    prefix: --no-recolor
  type: boolean
- doc: VALUE, --track-line-set=ATTR VALUE set ATTR to VALUE in track line
  id: s
  inputBinding:
    prefix: -s
  type: string
