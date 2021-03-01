version 1.0

task RnaseqStringtieGeneLevelExpressionpy {
  input {
    File? string_tie_file
    File? gene_file
    Boolean? no_novel_transcripts
    File? output_file
    File? log_file
    Boolean? quiet
    Boolean? verbose
    String extracts
    String gene_level
    String expression
    String data
    String from
    String string_tie
    String output_dot
  }
  command <<<
    rnaseq_stringtie_gene_level_expression_py \
      ~{extracts} \
      ~{gene_level} \
      ~{expression} \
      ~{data} \
      ~{from} \
      ~{string_tie} \
      ~{output_dot} \
      ~{if defined(string_tie_file) then ("--stringtie-file " +  '"' + string_tie_file + '"') else ""} \
      ~{if defined(gene_file) then ("--gene-file " +  '"' + gene_file + '"') else ""} \
      ~{if (no_novel_transcripts) then "--no-novel-transcripts" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_tie_file: "Path of the StringTie output file ."
    gene_file: "File containing a list of protein-coding genes."
    no_novel_transcripts: "Ignore novel transcripts."
    output_file: "Path of output file."
    log_file: "Path of log file (if specified, report to stdout AND file."
    quiet: "Only output errors and warnings."
    verbose: "Enable verbose output. Ignored if --quiet is specified."
    extracts: ""
    gene_level: ""
    expression: ""
    data: ""
    from: ""
    string_tie: ""
    output_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_string_tie_file = "${in_string_tie_file}"
    File out_output_file = "${in_output_file}"
  }
}