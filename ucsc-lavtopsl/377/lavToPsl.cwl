#!/usr/bin/env cwl-runner

baseCommand:
- lavToPsl
class: CommandLineTool
cwlVersion: v1.0
id: lavtopsl
inputs:
- doc: ''
  id: in_lav
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_psl
  inputBinding:
    position: 1
  type: string
- doc: set the target strand to c (default is no strand)
  id: target_strand
  inputBinding:
    prefix: -target-strand
  type: string
- doc: bed instead of psl
  id: bed
  inputBinding:
    prefix: -bed
  type: string
- doc: output lav scores to side file, such that each psl line in out.psl is matched
    by a score line.
  id: score_file
  inputBinding:
    prefix: -scoreFile
  type: File
