version 1.0

task Anviscriptfilterfastabyblast {
  input {
    File? fast_a_file
    File? output_file
    File? delimited_file_
    Int? out_fmt
    Float? threshold
    Boolean? just_do_it
    String contigs_fast_a
  }
  command <<<
    anvi_script_filter_fasta_by_blast \
      ~{contigs_fast_a} \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(delimited_file_) then ("-b " +  '"' + delimited_file_ + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    fast_a_file: "A FASTA-formatted input file (default: None)"
    output_file: "File path to store results. (default: None)"
    delimited_file_: "DELIMITED FILE, --blast-output TAB DELIMITED FILE\\nBLAST table generated with blastp. `--outfmt 6` as the\\noutput format is assumed. (default: None)"
    out_fmt: "Specify the column ordering of your BLAST report. We\\nadd the following paramter to our BLAST searches so\\nthe output report contains the `qlen` field, which is\\nnot included by default: `-outfmt '6 qseqid sseqid\\npident length mismatch gapopen qstart qend sstart send\\nevalue bitscore qlen slen'`. You may have used a\\ndifferent `-outfmt` paramter, and you should use this\\nparameter to explicitly define the column names in\\nyour output file. For instance, if you had used the\\nparameter mentioned above, then the correct version of\\nthis parameter would be: \\\"qseqid sseqid pident length\\nmismatch gapopen qstart qend sstart send evalue\\nbitscore qlen slen\\\". Regardless of the BLAST output\\nformat, your columns MUST contain the following\\nparameters for this program to work properly:\\n'qseqid', 'bitscore', 'length', 'qlen', and 'pident'.\\n(default: None)"
    threshold: "What `proper_pident` threshold do you want to use for\\nfiltering out sequences whose top bit-score matches\\nhave `proper_pident`s less than this threshold? We\\nhave defined `proper_pident` to be the percentage of\\nthe query amino acids that both aligned to and were\\nidentical to the corresponding matched amino acid.\\nNote that the `pident` parameter output by BLAST does\\nnot include regions of the query sequence unaligned to\\nthe matched sequence, whereas `proper_pident` does.\\nFor example, a sequence that's only half aligned by a\\nmatch but with 100% identity at matched regions has a\\n`pident` of 100 but a `proper_pident` of 50. The\\ndefault is 30.0%."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    contigs_fast_a: "🍺 More on `anvi-script-filter-fasta-by-blast`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_delimited_file_ = "${in_delimited_file_}"
  }
}