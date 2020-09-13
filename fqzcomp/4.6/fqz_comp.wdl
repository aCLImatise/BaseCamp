version 1.0

task FqzComp {
  input {
    Int? perform_lossy_compression
    Int? sequence_compression_level
    Boolean? use_strands_sequence
    Boolean? extra_seq_bit
    Int? quality_compression_level
    Int? name_compression_level
    Boolean? disable_multithreading
    Boolean? disable_generationverification_check
    Boolean? solid_format
  }
  command <<<
    fqz_comp \
      ~{if defined(perform_lossy_compression) then ("-Q " +  '"' + perform_lossy_compression + '"') else ""} \
      ~{if defined(sequence_compression_level) then ("-s " +  '"' + sequence_compression_level + '"') else ""} \
      ~{if (use_strands_sequence) then "-b" else ""} \
      ~{if (extra_seq_bit) then "-e" else ""} \
      ~{if defined(quality_compression_level) then ("-q " +  '"' + quality_compression_level + '"') else ""} \
      ~{if defined(name_compression_level) then ("-n " +  '"' + name_compression_level + '"') else ""} \
      ~{if (disable_multithreading) then "-P" else ""} \
      ~{if (disable_generationverification_check) then "-X" else ""} \
      ~{if (solid_format) then "-S" else ""}
  >>>
  parameter_meta {
    perform_lossy_compression: "Perform lossy compression with all quality values\\nbeing within 'num' distance from their original value.\\nDefault is lossless, i.e. \\\"-q 0\\\""
    sequence_compression_level: "Sequence compression level. 1-9 [Def. 3]\\nSpecifying '+' on the end (eg -s5+) will use\\nmodels of multiple sizes for improved compression."
    use_strands_sequence: "Use both strands in sequence hash table."
    extra_seq_bit: "Extra seq compression: 16-bit vs 8-bit counters."
    quality_compression_level: "Quality compression level.  1-3 [Def. 2]"
    name_compression_level: "Name compression level.  1-2 [Def. 2]"
    disable_multithreading: "Disable multi-threading"
    disable_generationverification_check: "Disable generation/verification of check sums"
    solid_format: "SOLiD format"
  }
  output {
    File out_stdout = stdout()
  }
}