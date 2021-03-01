class: CommandLineTool
id: map_gff_coords.cwl
inputs:
- id: in_type
  doc: only look at features of particular type
  type: string?
  inputBinding:
    prefix: --type
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
- id: in_force_entry
  doc: if a feature can't be mapped, then add an empty entry to the GFF file (rather
    than skipping it entirely); implies --lazy
  type: boolean?
  inputBinding:
    prefix: --force-entry
- id: in_verbose
  doc: report progress
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_source_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_source_gff_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_target_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- map_gff_coords
