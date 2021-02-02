version 1.0

task FetchSequence {
  input {
    Int? geneid
    Int? gene_start
    Int? genes_top
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    FetchSequence \
      ~{if defined(geneid) then ("--geneid " +  '"' + geneid + '"') else ""} \
      ~{if defined(gene_start) then ("--genestart " +  '"' + gene_start + '"') else ""} \
      ~{if defined(genes_top) then ("--genestop " +  '"' + genes_top + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    geneid: "Gene id"
    gene_start: "Gene start"
    genes_top: "Gene stop"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
  }
}