version 1.0

task Mdust {
  input {
    Int? value_lower_values
    Int? maximum_word_size
    String? fasta_output_disabled
    String? masking_coordinates_onlyseqname
    File? fast_a_file
  }
  command <<<
    mdust \
      ~{fast_a_file} \
      ~{if defined(value_lower_values) then ("-v " +  '"' + value_lower_values + '"') else ""} \
      ~{if defined(maximum_word_size) then ("-w " +  '"' + maximum_word_size + '"') else ""} \
      ~{if defined(fasta_output_disabled) then ("-m " +  '"' + fasta_output_disabled + '"') else ""} \
      ~{if defined(masking_coordinates_onlyseqname) then ("-c " +  '"' + masking_coordinates_onlyseqname + '"') else ""}
  >>>
  parameter_meta {
    value_lower_values: "<cut-off> value is 28 (lower values might mask more,\\nbut possibly still useful sequence; > 64 will rarely mask poly-triplets)"
    maximum_word_size: "maximum word size to <wsize> (default 3)"
    fasta_output_disabled: "fasta output is not disabled by -c, set the masking letter type:\\nN ('N', default), X ('X'), L (make lowercase)"
    masking_coordinates_onlyseqname: "masking coordinates only:\\nseq_name, seqlength, mask_start, mask_end  (tab delimited)\\n"
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}