class: CommandLineTool
id: isect_mercator_alignment_gff.cwl
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
- id: in_stockholm
  doc: use and display Stockholm-format alignments with conservation statistics (default
    is multi-FASTA)
  type: boolean?
  inputBinding:
    prefix: --stockholm
- id: in_verbose
  doc: report progress
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- isect_mercator_alignment_gff
