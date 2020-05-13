class: CommandLineTool
id: map_coords.cwl
inputs:
- id: source_genome
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
- id: target_genome
  doc: ''
  type: string
  inputBinding:
    position: 5
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
outputs: []
cwlVersion: v1.1
baseCommand:
- map_coords
