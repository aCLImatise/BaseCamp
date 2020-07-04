version 1.0

task AlbatradisGeneReports {
  input {
    String? prefix
    Boolean? verbose
    Boolean? debug
    String gene_reports
  }
  command <<<
    albatradis-gene_reports \
      ~{gene_reports} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    prefix: "Output directory prefix (default: output)"
    verbose: "Print out more information about the analysis while it runs (default: False)"
    debug: "Turn on debugging (default: False)"
    gene_reports: "Gene report spreadsheets"
  }
}