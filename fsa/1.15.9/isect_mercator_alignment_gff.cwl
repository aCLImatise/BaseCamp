class: CommandLineTool
id: isect_mercator_alignment_gff.cwl
inputs:
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: type
  doc: only look at features of particular type
  type: string
  inputBinding:
    prefix: --type
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
- id: verbose
  doc: report progress
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- isect_mercator_alignment_gff
