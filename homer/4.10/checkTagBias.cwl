class: CommandLineTool
id: checkTagBias.pl.cwl
inputs:
- id: pos
  doc: (only check positive or negative strands)
  type: string
  inputBinding:
    prefix: -pos
- id: skip_gc
  doc: (skip GC% calculation)
  type: boolean
  inputBinding:
    prefix: -skipGC
- id: skip_freq
  doc: (skip nucleotide frequency calculation)
  type: boolean
  inputBinding:
    prefix: -skipFreq
- id: prefix
  doc: '(output files will start with prefix name, default: directory name)'
  type: File
  inputBinding:
    prefix: -prefix
- id: mask
  doc: (use repeat-masked genome)
  type: boolean
  inputBinding:
    prefix: -mask
outputs: []
cwlVersion: v1.1
baseCommand:
- checkTagBias.pl
