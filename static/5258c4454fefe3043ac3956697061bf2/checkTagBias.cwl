class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkTagBias.pl.cwl
inputs:
- id: start
  doc: <#> (offset to start frequency calculation, default=-50)
  type: boolean
  inputBinding:
    prefix: -start
- id: end
  doc: <#> (offset to end frequency calculation, default=200)
  type: boolean
  inputBinding:
    prefix: -end
- id: gc_start
  doc: <#> (offset to start GC% calculation, default=0)
  type: boolean
  inputBinding:
    prefix: -gcstart
- id: gc_end
  doc: <#> (offset to end GC% calculation, default=100)
  type: boolean
  inputBinding:
    prefix: -gcend
- id: keep
  doc: (do not delete sequence files for each tag position)
  type: boolean
  inputBinding:
    prefix: -keep
- id: three_p
  doc: (if tags have lengths, align them at the 3' end)
  type: boolean
  inputBinding:
    prefix: -3p
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
- id: tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: additional
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- checkTagBias.pl
