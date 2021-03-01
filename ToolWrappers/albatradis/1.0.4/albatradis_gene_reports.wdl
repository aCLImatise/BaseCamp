version 1.0

task AlbatradisgeneReports {
  input {
    Directory? prefix
    Boolean? verbose
    Boolean? debug
    String gene_reports
  }
  command <<<
    albatradis_gene_reports \
      ~{gene_reports} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "Output directory prefix (default: output)"
    verbose: "Print out more information about the analysis while it\\nruns (default: False)"
    debug: "Turn on debugging (default: False)"
    gene_reports: "Gene report spreadsheets"
  }
  output {
    File out_stdout = stdout()
    Directory out_prefix = "${in_prefix}"
  }
}