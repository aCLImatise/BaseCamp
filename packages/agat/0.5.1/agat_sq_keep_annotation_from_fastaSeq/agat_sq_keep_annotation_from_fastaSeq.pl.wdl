version 1.0

task AgatSqKeepAnnotationFromFastaSeqpl {
  input {
    File? string_input_gtfgff
    File? fast_a
    String? verbose
    File? string_output_file
    String agat_sq_keep_annotation_from_fast_as_eq_do_tpl
    String sensitive_dot
  }
  command <<<
    agat_sq_keep_annotation_from_fastaSeq_pl \
      ~{agat_sq_keep_annotation_from_fast_as_eq_do_tpl} \
      ~{sensitive_dot} \
      ~{if defined(string_input_gtfgff) then ("--input " +  '"' + string_input_gtfgff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    string_input_gtfgff: "STRING: Input GTF/GFF file."
    fast_a: "STRING: fasta file."
    verbose: "For verbosity"
    string_output_file: "STRING: Output file. If no output file is specified, the output\\nwill be written to STDOUT. The result is in tabulate format."
    agat_sq_keep_annotation_from_fast_as_eq_do_tpl: "Description:"
    sensitive_dot: "Usage:\\nagat_sq_keep_annotation_from_fastaSeq.pl --gff <gff_file.gff> --fasta <fasta_file.fa> [-o <output file>]\\nagat_sq_keep_annotation_from_fastaSeq.pl --help"
  }
  output {
    File out_stdout = stdout()
    File out_string_output_file = "${in_string_output_file}"
  }
}