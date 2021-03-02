class: CommandLineTool
id: map_coords.cwl
inputs:
- id: in_data
  doc: path to map, genome and alignment files
  type: Directory?
  inputBinding:
    prefix: --data
- id: in_map
  doc: path to map and genome files
  type: Directory?
  inputBinding:
    prefix: --map
- id: in_align
  doc: path to alignment files
  type: Directory?
  inputBinding:
    prefix: --align
- id: in_lazy
  doc: warn, rather than die, if the subalignment can't be obtained
  type: boolean?
  inputBinding:
    prefix: --lazy
- id: in_truncate
  doc: truncate unmappable sequence (rather than skipping) and show truncated subalignment
  type: boolean?
  inputBinding:
    prefix: --truncate
- id: in_source_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chromosome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_end
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_strand
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_target_genome
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- map_coords
