version 1.0

task NcbiExtractEntrez2genepy {
  input {
    File? gene_two_acc_file
    File? output_file
    File? log_file
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    ncbi_extract_entrez2gene_py \
      ~{if defined(gene_two_acc_file) then ("--gene2acc-file " +  '"' + gene_two_acc_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_two_acc_file: "Path of gene2accession.gz file (from\\nftp://ftp.ncbi.nlm.nih.gov/gene/DATA), or a filtered version\\nthereof."
    output_file: "Path of output file. If set to ``-``, print to ``stdout``,\\nand redirect logging messages to ``stderr``."
    log_file: "Path of log file. If not specified, print to stdout."
    quiet: "Suppress all output except warnings and errors."
    verbose: "Enable verbose output. Ignored if ``--quiet`` is specified."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}