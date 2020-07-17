class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/slice_mercator_alignment.cwl
inputs:
- id: data
  doc: path to map, genome and alignment files
  type: Directory
  inputBinding:
    prefix: --data
- id: map
  doc: path to map and genome files
  type: Directory
  inputBinding:
    prefix: --map
- id: align
  doc: path to alignment files
  type: Directory
  inputBinding:
    prefix: --align
- id: lazy
  doc: warn, rather than die, if the subalignment can't be obtained
  type: boolean
  inputBinding:
    prefix: --lazy
- id: truncate
  doc: truncate unmappable sequence (rather than skipping) and show truncated subalignment
  type: boolean
  inputBinding:
    prefix: --truncate
- id: stockholm
  doc: use and display Stockholm-format alignments with conservation statistics (default
    is multi-FASTA)
  type: boolean
  inputBinding:
    prefix: --stockholm
- id: zero_based
  doc: coordinates are 0-based (default is 1-based)
  type: boolean
  inputBinding:
    prefix: --zerobased
- id: half_open
  doc: end coordinate is open, i.e., [start, end)
  type: boolean
  inputBinding:
    prefix: --halfopen
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chromosome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: strand
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- slice_mercator_alignment
