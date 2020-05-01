#!/usr/bin/env cwl-runner

baseCommand:
- checkTagBias.pl
class: CommandLineTool
cwlVersion: v1.0
id: checktagbias.pl
inputs:
- doc: (only check positive or negative strands)
  id: pos
  inputBinding:
    prefix: -pos
  type: string
- doc: (skip GC% calculation)
  id: skip_gc
  inputBinding:
    prefix: -skipGC
  type: boolean
- doc: (skip nucleotide frequency calculation)
  id: skip_freq
  inputBinding:
    prefix: -skipFreq
  type: boolean
- doc: '(output files will start with prefix name, default: directory name)'
  id: prefix
  inputBinding:
    prefix: -prefix
  type: File
- doc: (use repeat-masked genome)
  id: mask
  inputBinding:
    prefix: -mask
  type: boolean
