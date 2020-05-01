#!/usr/bin/env cwl-runner

baseCommand:
- maf_count.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_count.py
inputs:
- doc: count alignment columns rather than number of alignments
  id: cols
  inputBinding:
    prefix: --cols
  type: boolean
- doc: count bases in first species rather than number of alignments
  id: bases
  inputBinding:
    prefix: --bases
  type: boolean
- doc: when counting bases, skip this base
  id: skip
  inputBinding:
    prefix: --skip
  type: string
- doc: print a count for each alignment rather than whole file
  id: each
  inputBinding:
    prefix: --each
  type: boolean
- doc: reference sequence (first by default, 0..n)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
