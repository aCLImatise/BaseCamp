class: CommandLineTool
id: map_gff_coords.cwl
inputs:
- id: source_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_gff_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
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
- id: force_entry
  doc: if a feature can't be mapped, then add an empty entry to the GFF file (rather
    than skipping it entirely); implies --lazy
  type: boolean
  inputBinding:
    prefix: --force-entry
- id: verbose
  doc: report progress
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- map_gff_coords
