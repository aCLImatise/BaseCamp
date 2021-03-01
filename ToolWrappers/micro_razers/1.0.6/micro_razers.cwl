class: CommandLineTool
id: micro_razers.cwl
inputs:
- id: in_output
  doc: "Change output filename. (use - to dump to stdout in razers format)\nDefault:\
    \ <READS FILE>.razers. Valid filetypes are: .razers and .sam."
  type: File?
  inputBinding:
    prefix: --output
- id: in_recognition_rate
  doc: 'set the percent recognition rate In range [80..100]. Default: 100.'
  type: long?
  inputBinding:
    prefix: --recognition-rate
- id: in_seed_length
  doc: 'seed length In range [10..inf]. Default: 16.'
  type: long?
  inputBinding:
    prefix: --seed-length
- id: in_seed_error
  doc: allow for one error in the seed
  type: boolean?
  inputBinding:
    prefix: --seed-error
- id: in_forward
  doc: map reads only to forward strands.
  type: boolean?
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: map reads only to reverse strands.
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_match_n
  doc: "'N' matches with all other characters"
  type: boolean?
  inputBinding:
    prefix: --match-N
- id: in_max_hits
  doc: 'output only NUM of the best hits In range [1..inf]. Default: 100.'
  type: long?
  inputBinding:
    prefix: --max-hits
- id: in_purge_ambiguous
  doc: purge reads with more than max-hits best matches
  type: boolean?
  inputBinding:
    prefix: --purge-ambiguous
- id: in_low_memory
  doc: decrease memory usage at the expense of runtime
  type: boolean?
  inputBinding:
    prefix: --low-memory
- id: in_verbose
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_v_verbose
  doc: very verbose mode
  type: boolean?
  inputBinding:
    prefix: --vverbose
- id: in_alignment
  doc: dump the alignment for each match
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_genome_naming
  doc: "Select how genomes are named. 0 = use Fasta id, 1 = enumerate\nbeginning with\
    \ 1. In range [0..1]. Default: 0."
  type: long?
  inputBinding:
    prefix: --genome-naming
- id: in_read_naming
  doc: "Select how reads are named. 0 = use Fasta id, 1 = enumerate\nbeginning with\
    \ 1. In range [0..1]. Default: 0."
  type: long?
  inputBinding:
    prefix: --read-naming
- id: in_sort_order
  doc: "Select how matches are sorted. 0 = read number, 1 = genome position.\nIn range\
    \ [0..1]. Default: 0."
  type: long?
  inputBinding:
    prefix: --sort-order
- id: in_position_format
  doc: "Select begin/end position numbering (see Coordinate section below).\n0 = gap\
    \ space, 1 = position space. In range [0..1]. Default: 0."
  type: long?
  inputBinding:
    prefix: --position-format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Change output filename. (use - to dump to stdout in razers format)\nDefault:\
    \ <READS FILE>.razers. Valid filetypes are: .razers and .sam."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- micro_razers
