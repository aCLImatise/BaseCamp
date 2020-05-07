class: CommandLineTool
id: bmtool.cwl
inputs:
- id: quiet
  doc: -q     Do not show progress indicators [off]
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fast_a_file
  doc: =''        -d ''  Input fasta or blastdb file
  type: boolean
  inputBinding:
    prefix: --fasta-file
- id: output_file
  doc: =''       -o ''  Output word bitmask file
  type: boolean
  inputBinding:
    prefix: --output-file
- id: gi_list
  doc: =''           -l ''  Set gi list for blastdb file
  type: boolean
  inputBinding:
    prefix: --gi-list
- id: input_file
  doc: =''        -i ''  Set word bitmask file as input
  type: boolean
  inputBinding:
    prefix: --input-file
- id: fast_a_parse_ids
  doc: =0           Parse FASTA ids (becomes broken if ranges are used)
  type: boolean
  inputBinding:
    prefix: --fasta-parse-ids
- id: word_size
  doc: =18         -w 18  Word size to use
  type: boolean
  inputBinding:
    prefix: --word-size
- id: word_step
  doc: =1          -S 1   Step (stride size) to use
  type: boolean
  inputBinding:
    prefix: --word-step
- id: max_amb
  doc: =0            -A 0   Maximal number of ambiguities to count
  type: boolean
  inputBinding:
    prefix: --max-amb
- id: pattern
  doc: =0            -p 0   Set pattern to use with discontiguous words, 0x or 0b
    prefix may be used for hex or bin (-w## will be ignored)
  type: boolean
  inputBinding:
    prefix: --pattern
- id: max_word_count
  doc: =0     -W 0   Do not include words counted more than this value (for 16-mers
    or less)
  type: boolean
  inputBinding:
    prefix: --max-word-count
- id: compress
  doc: -z     Compress bitmask (requires version 2) [off]
  type: boolean
  inputBinding:
    prefix: --compress
- id: extra_compress
  doc: -Z     Compress bitmask (requires version 2) looking for duplicate extension
    sets [off]
  type: boolean
  inputBinding:
    prefix: --extra-compress
- id: pack_prefix_bits
  doc: =26         Bits to use for compression prefix
  type: boolean
  inputBinding:
    prefix: --pack-prefix-bits
- id: pack_offset_bits
  doc: =34         Number of bits in table to use for data segment offset
  type: boolean
  inputBinding:
    prefix: --pack-offset-bits
- id: pack_count_bits
  doc: =10          Number of bits to reserve for entry count within segment
  type: boolean
  inputBinding:
    prefix: --pack-count-bits
- id: mmap
  doc: Memory map source file instead of reading [off]
  type: boolean
  inputBinding:
    prefix: --mmap
- id: diff
  doc: Diff source and result before writing, repport differences [off]
  type: boolean
  inputBinding:
    prefix: --diff
- id: slow
  doc: Slow copy (using query API - to check query api [off]
  type: boolean
  inputBinding:
    prefix: --slow
- id: bit_test
  doc: Test bit operations [off]
  type: boolean
  inputBinding:
    prefix: --bit-test
outputs: []
cwlVersion: v1.1
baseCommand:
- bmtool
