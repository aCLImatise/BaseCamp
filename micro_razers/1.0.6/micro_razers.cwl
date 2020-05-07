class: CommandLineTool
id: micro_razers.cwl
inputs:
- id: output
  doc: 'Change output filename. (use - to dump to stdout in razers format) Default:
    <READS FILE>.razers. Valid filetypes are: .razers and .sam.'
  type: File
  inputBinding:
    prefix: --output
- id: recognition_rate
  doc: 'set the percent recognition rate In range [80..100]. Default: 100.'
  type: string
  inputBinding:
    prefix: --recognition-rate
- id: seed_length
  doc: 'seed length In range [10..inf]. Default: 16.'
  type: string
  inputBinding:
    prefix: --seed-length
- id: seed_error
  doc: allow for one error in the seed
  type: boolean
  inputBinding:
    prefix: --seed-error
- id: forward
  doc: map reads only to forward strands.
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: map reads only to reverse strands.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: match_n
  doc: "'N' matches with all other characters"
  type: boolean
  inputBinding:
    prefix: --match-N
- id: max_hits
  doc: 'output only NUM of the best hits In range [1..inf]. Default: 100.'
  type: string
  inputBinding:
    prefix: --max-hits
- id: purge_ambiguous
  doc: purge reads with more than max-hits best matches
  type: boolean
  inputBinding:
    prefix: --purge-ambiguous
- id: low_memory
  doc: decrease memory usage at the expense of runtime
  type: boolean
  inputBinding:
    prefix: --low-memory
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: v_verbose
  doc: very verbose mode
  type: boolean
  inputBinding:
    prefix: --vverbose
- id: alignment
  doc: dump the alignment for each match
  type: boolean
  inputBinding:
    prefix: --alignment
- id: genome_naming
  doc: 'Select how genomes are named. 0 = use Fasta id, 1 = enumerate beginning with
    1. In range [0..1]. Default: 0.'
  type: string
  inputBinding:
    prefix: --genome-naming
- id: read_naming
  doc: 'Select how reads are named. 0 = use Fasta id, 1 = enumerate beginning with
    1. In range [0..1]. Default: 0.'
  type: string
  inputBinding:
    prefix: --read-naming
- id: sort_order
  doc: 'Select how matches are sorted. 0 = read number, 1 = genome position. In range
    [0..1]. Default: 0.'
  type: string
  inputBinding:
    prefix: --sort-order
- id: position_format
  doc: 'Select begin/end position numbering (see Coordinate section below). 0 = gap
    space, 1 = position space. In range [0..1]. Default: 0.'
  type: string
  inputBinding:
    prefix: --position-format
outputs: []
cwlVersion: v1.1
baseCommand:
- micro_razers
