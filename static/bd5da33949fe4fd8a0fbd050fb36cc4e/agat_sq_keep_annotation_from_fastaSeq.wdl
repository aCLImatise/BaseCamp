version 1.0

task AgatSqKeepAnnotationFromFastaSeq.pl {
  input {
    String? string_input_gtfgff
    String? fast_a
    String? verbose
    String? string_output_file
  }
  command <<<
    agat_sq_keep_annotation_from_fastaSeq.pl \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    fast_a: "STRING: fasta file."
    verbose: "For verbosity"
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
  }
}