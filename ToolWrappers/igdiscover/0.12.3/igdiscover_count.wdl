version 1.0

task IgdiscoverCount {
  input {
    String? gene
    File? database
    File? plot
    Float? d_evalue
    Int? d_coverage
    String? d_errors
    String? allele_ratio
  }
  command <<<
    igdiscover count \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(plot) then ("--plot " +  '"' + plot + '"') else ""} \
      ~{if defined(d_evalue) then ("--d-evalue " +  '"' + d_evalue + '"') else ""} \
      ~{if defined(d_coverage) then ("--d-coverage " +  '"' + d_coverage + '"') else ""} \
      ~{if defined(d_errors) then ("--d-errors " +  '"' + d_errors + '"') else ""} \
      ~{if defined(allele_ratio) then ("--allele-ratio " +  '"' + allele_ratio + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene: "Which gene type: Choose V, D or J. Default: Default: V"
    database: "Compute expressions for the sequences that are named\\nin the FASTA file. Only the sequence names in the file\\nare used! This is the only way to also include genes\\nwith an expression of zero."
    plot: "Plot expressions to FILE (PDF or PNG)"
    d_evalue: "Maximal allowed E-value for D gene match. Default:\\n1E-4 if --gene=D, no restriction otherwise."
    d_coverage: "Minimum D coverage (in percent). Default: 70 if\\n--gene=D, no restriction otherwise."
    d_errors: "Maximum allowed D errors. Default: No limit."
    allele_ratio: "Required allele ratio. Works only for genes named\\n\\\"NAME*ALLELE\\\". Default: Do not check allele ratio.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}