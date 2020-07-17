version 1.0

task AlbatradisPresenceAbsence {
  input {
    String? prefix
    Boolean? verbose
    Boolean? debug
    String embl_file
    String gene_reports
  }
  command <<<
    albatradis-presence_absence \
      ~{embl_file} \
      ~{gene_reports} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    prefix: "Output directory prefix (default: output)"
    verbose: "Print out more information about the analysis while it runs (default: False)"
    debug: "Turn on debugging (default: False)"
    embl_file: "Annotation file in EMBL format"
    gene_reports: "Gene report spreadsheets"
  }
}