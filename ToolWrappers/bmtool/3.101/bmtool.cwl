class: CommandLineTool
id: bmtool.cwl
inputs:
- id: in_quiet
  doc: -q     Do not show progress indicators [off]
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fast_a_file
  doc: =''        -d ''  Input fasta or blastdb file
  type: boolean
  inputBinding:
    prefix: --fasta-file
- id: in_output_file
  doc: =''       -o ''  Output word bitmask file
  type: File
  inputBinding:
    prefix: --output-file
- id: in_gi_list
  doc: =''           -l ''  Set gi list for blastdb file
  type: boolean
  inputBinding:
    prefix: --gi-list
- id: in_input_file
  doc: =''        -i ''  Set word bitmask file as input
  type: boolean
  inputBinding:
    prefix: --input-file
- id: in_fast_a_parse_ids
  doc: Parse FASTA ids (becomes broken if ranges are used)
  type: long
  inputBinding:
    prefix: --fasta-parse-ids
- id: in_word_size
  doc: -w 18  Word size to use
  type: long
  inputBinding:
    prefix: --word-size
- id: in_word_step
  doc: -S 1   Step (stride size) to use
  type: long
  inputBinding:
    prefix: --word-step
- id: in_max_amb
  doc: -A 0   Maximal number of ambiguities to count
  type: long
  inputBinding:
    prefix: --max-amb
- id: in_pattern
  doc: -p 0   Set pattern to use with discontiguous words, 0x or 0b prefix may be
    used for hex or bin (-w## will be ignored)
  type: long
  inputBinding:
    prefix: --pattern
- id: in_max_word_count
  doc: -W 0   Do not include words counted more than this value (for 16-mers or less)
  type: long
  inputBinding:
    prefix: --max-word-count
- id: in_compress
  doc: -z     Compress bitmask (requires version 2) [off]
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_extra_compress
  doc: -Z     Compress bitmask (requires version 2) looking for duplicate extension
    sets [off]
  type: boolean
  inputBinding:
    prefix: --extra-compress
- id: in_pack_prefix_bits
  doc: Bits to use for compression prefix
  type: long
  inputBinding:
    prefix: --pack-prefix-bits
- id: in_pack_offset_bits
  doc: Number of bits in table to use for data segment offset
  type: long
  inputBinding:
    prefix: --pack-offset-bits
- id: in_pack_count_bits
  doc: Number of bits to reserve for entry count within segment
  type: long
  inputBinding:
    prefix: --pack-count-bits
- id: in_mmap
  doc: Memory map source file instead of reading [off]
  type: boolean
  inputBinding:
    prefix: --mmap
- id: in_diff
  doc: Diff source and result before writing, repport differences [off]
  type: boolean
  inputBinding:
    prefix: --diff
- id: in_slow
  doc: Slow copy (using query API - to check query api [off]
  type: boolean
  inputBinding:
    prefix: --slow
- id: in_bit_test
  doc: Test bit operations [off]
  type: boolean
  inputBinding:
    prefix: --bit-test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: =''       -o ''  Output word bitmask file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- bmtool
