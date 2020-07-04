version 1.0

task Bmtool {
  input {
    Boolean? quiet
    Boolean? fast_a_file
    Boolean? output_file
    Boolean? gi_list
    Boolean? input_file
    String? fast_a_parse_ids
    String? word_size
    String? word_step
    String? max_amb
    String? pattern
    String? max_word_count
    Boolean? compress
    Boolean? extra_compress
    String? pack_prefix_bits
    String? pack_offset_bits
    String? pack_count_bits
    Boolean? mmap
    Boolean? diff
    Boolean? slow
    Boolean? bit_test
  }
  command <<<
    bmtool \
      ~{true="--quiet" false="" quiet} \
      ~{true="--fasta-file" false="" fast_a_file} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--gi-list" false="" gi_list} \
      ~{true="--input-file" false="" input_file} \
      ~{if defined(fast_a_parse_ids) then ("--fasta-parse-ids " +  '"' + fast_a_parse_ids + '"') else ""} \
      ~{if defined(word_size) then ("--word-size " +  '"' + word_size + '"') else ""} \
      ~{if defined(word_step) then ("--word-step " +  '"' + word_step + '"') else ""} \
      ~{if defined(max_amb) then ("--max-amb " +  '"' + max_amb + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(max_word_count) then ("--max-word-count " +  '"' + max_word_count + '"') else ""} \
      ~{true="--compress" false="" compress} \
      ~{true="--extra-compress" false="" extra_compress} \
      ~{if defined(pack_prefix_bits) then ("--pack-prefix-bits " +  '"' + pack_prefix_bits + '"') else ""} \
      ~{if defined(pack_offset_bits) then ("--pack-offset-bits " +  '"' + pack_offset_bits + '"') else ""} \
      ~{if defined(pack_count_bits) then ("--pack-count-bits " +  '"' + pack_count_bits + '"') else ""} \
      ~{true="--mmap" false="" mmap} \
      ~{true="--diff" false="" diff} \
      ~{true="--slow" false="" slow} \
      ~{true="--bit-test" false="" bit_test}
  >>>
  parameter_meta {
    quiet: "-q     Do not show progress indicators [off]"
    fast_a_file: "=''        -d ''  Input fasta or blastdb file"
    output_file: "=''       -o ''  Output word bitmask file"
    gi_list: "=''           -l ''  Set gi list for blastdb file"
    input_file: "=''        -i ''  Set word bitmask file as input"
    fast_a_parse_ids: "Parse FASTA ids (becomes broken if ranges are used)"
    word_size: "-w 18  Word size to use"
    word_step: "-S 1   Step (stride size) to use"
    max_amb: "-A 0   Maximal number of ambiguities to count"
    pattern: "-p 0   Set pattern to use with discontiguous words, 0x or 0b prefix may be used for hex or bin (-w## will be ignored)"
    max_word_count: "-W 0   Do not include words counted more than this value (for 16-mers or less)"
    compress: "-z     Compress bitmask (requires version 2) [off]"
    extra_compress: "-Z     Compress bitmask (requires version 2) looking for duplicate extension sets [off]"
    pack_prefix_bits: "Bits to use for compression prefix"
    pack_offset_bits: "Number of bits in table to use for data segment offset"
    pack_count_bits: "Number of bits to reserve for entry count within segment"
    mmap: "Memory map source file instead of reading [off]"
    diff: "Diff source and result before writing, repport differences [off]"
    slow: "Slow copy (using query API - to check query api [off]"
    bit_test: "Test bit operations [off]"
  }
}