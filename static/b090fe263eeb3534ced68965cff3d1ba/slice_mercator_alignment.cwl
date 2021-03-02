class: CommandLineTool
id: slice_mercator_alignment.cwl
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
- id: in_stockholm
  doc: use and display Stockholm-format alignments with conservation statistics (default
    is multi-FASTA)
  type: boolean?
  inputBinding:
    prefix: --stockholm
- id: in_zero_based
  doc: coordinates are 0-based (default is 1-based)
  type: boolean?
  inputBinding:
    prefix: --zerobased
- id: in_half_open
  doc: end coordinate is open, i.e., [start, end)
  type: boolean?
  inputBinding:
    prefix: --halfopen
- id: in_genome
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fsa:1.15.9--h8b12597_1
cwlVersion: v1.1
baseCommand:
- slice_mercator_alignment
