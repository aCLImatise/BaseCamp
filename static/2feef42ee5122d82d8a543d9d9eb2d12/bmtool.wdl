version 1.0

task Bmtool {
  input {
    Boolean? quiet
    Boolean? fast_a_file
    File? output_file
    Boolean? gi_list
    Boolean? input_file
    Int? fast_a_parse_ids
    Int? word_size
    Int? word_step
    Int? max_amb
    Int? pattern
    Int? max_word_count
    Boolean? compress
    Boolean? extra_compress
    Int? pack_prefix_bits
    Int? pack_offset_bits
    Int? pack_count_bits
    Boolean? mmap
    Boolean? diff
    Boolean? slow
    Boolean? bit_test
  }
  command <<<
    bmtool \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (fast_a_file) then "--fasta-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (gi_list) then "--gi-list" else ""} \
      ~{if (input_file) then "--input-file" else ""} \
      ~{if defined(fast_a_parse_ids) then ("--fasta-parse-ids " +  '"' + fast_a_parse_ids + '"') else ""} \
      ~{if defined(word_size) then ("--word-size " +  '"' + word_size + '"') else ""} \
      ~{if defined(word_step) then ("--word-step " +  '"' + word_step + '"') else ""} \
      ~{if defined(max_amb) then ("--max-amb " +  '"' + max_amb + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(max_word_count) then ("--max-word-count " +  '"' + max_word_count + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (extra_compress) then "--extra-compress" else ""} \
      ~{if defined(pack_prefix_bits) then ("--pack-prefix-bits " +  '"' + pack_prefix_bits + '"') else ""} \
      ~{if defined(pack_offset_bits) then ("--pack-offset-bits " +  '"' + pack_offset_bits + '"') else ""} \
      ~{if defined(pack_count_bits) then ("--pack-count-bits " +  '"' + pack_count_bits + '"') else ""} \
      ~{if (mmap) then "--mmap" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (slow) then "--slow" else ""} \
      ~{if (bit_test) then "--bit-test" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not show progress indicators [off]"
    fast_a_file: "=''        -d ''  Input fasta or blastdb file"
    output_file: "=''       -o ''  Output word bitmask file"
    gi_list: "=''           -l ''  Set gi list for blastdb file"
    input_file: "=''        -i ''  Set word bitmask file as input"
    fast_a_parse_ids: "Parse FASTA ids (becomes broken if ranges are used)"
    word_size: "Word size to use"
    word_step: "Step (stride size) to use"
    max_amb: "Maximal number of ambiguities to count"
    pattern: "Set pattern to use with discontiguous words, 0x or 0b prefix may be used for hex or bin (-w## will be ignored)"
    max_word_count: "Do not include words counted more than this value (for 16-mers or less)"
    compress: "Compress bitmask (requires version 2) [off]"
    extra_compress: "Compress bitmask (requires version 2) looking for duplicate extension sets [off]"
    pack_prefix_bits: "Bits to use for compression prefix"
    pack_offset_bits: "Number of bits in table to use for data segment offset"
    pack_count_bits: "Number of bits to reserve for entry count within segment"
    mmap: "Memory map source file instead of reading [off]"
    diff: "Diff source and result before writing, repport differences [off]"
    slow: "Slow copy (using query API - to check query api [off]"
    bit_test: "Test bit operations [off]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}