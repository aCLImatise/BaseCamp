version 1.0

task NcbiExtractEntrez2gene.py {
  input {
    String? gene_two_acc_file
    String? output_file
    String? log_file
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    ncbi_extract_entrez2gene.py \
      ~{if defined(gene_two_acc_file) then ("--gene2acc-file " +  '"' + gene_two_acc_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    gene_two_acc_file: "Path of gene2accession.gz file (from ftp://ftp.ncbi.nlm.nih.gov/gene/DATA), or a filtered version thereof."
    output_file: "Path of output file. If set to ``-``, print to ``stdout``, and redirect logging messages to ``stderr``."
    log_file: "Path of log file. If not specified, print to stdout."
    quiet: "Suppress all output except warnings and errors."
    verbose: "Enable verbose output. Ignored if ``--quiet`` is specified."
  }
}