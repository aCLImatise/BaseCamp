version 1.0

task AlbatradispresenceAbsence {
  input {
    Directory? prefix
    Boolean? verbose
    Boolean? debug
    String embl_file
    String gene_reports
  }
  command <<<
    albatradis_presence_absence \
      ~{embl_file} \
      ~{gene_reports} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    prefix: "Output directory prefix (default: output)"
    verbose: "Print out more information about the analysis while it\\nruns (default: False)"
    debug: "Turn on debugging (default: False)"
    embl_file: "Annotation file in EMBL format"
    gene_reports: "Gene report spreadsheets"
  }
  output {
    File out_stdout = stdout()
    Directory out_prefix = "${in_prefix}"
  }
}