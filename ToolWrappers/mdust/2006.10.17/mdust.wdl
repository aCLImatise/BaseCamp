version 1.0

task Mdust {
  input {
    Int? cutoff_value_lower
    Int? maximum_word_size
    String? fasta_output_disabled
    String? masking_coordinates_seqlength
    File? fast_a_file
  }
  command <<<
    mdust \
      ~{fast_a_file} \
      ~{if defined(cutoff_value_lower) then ("-v " +  '"' + cutoff_value_lower + '"') else ""} \
      ~{if defined(maximum_word_size) then ("-w " +  '"' + maximum_word_size + '"') else ""} \
      ~{if defined(fasta_output_disabled) then ("-m " +  '"' + fasta_output_disabled + '"') else ""} \
      ~{if defined(masking_coordinates_seqlength) then ("-c " +  '"' + masking_coordinates_seqlength + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cutoff_value_lower: "<cut-off> value is 28 (lower values might mask more,\\nbut possibly still useful sequence; > 64 will rarely mask poly-triplets)"
    maximum_word_size: "maximum word size to <wsize> (default 3)"
    fasta_output_disabled: "fasta output is not disabled by -c, set the masking letter type:\\nN ('N', default), X ('X'), L (make lowercase)"
    masking_coordinates_seqlength: "masking coordinates only:\\nseq_name, seqlength, mask_start, mask_end  (tab delimited)\\n"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}