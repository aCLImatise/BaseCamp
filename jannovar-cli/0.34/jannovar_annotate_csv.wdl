version 1.0

task JannovarAnnotateCsv {
  input {
    String? database
    String? csv_file
    String? chr
    String? pos
    String? ref
    String? alt
    String? type
    Boolean? header
    Boolean? show_all
    Boolean? no_three_prime_shifting
    Boolean? three_letter_amino_acids
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String jan_novar_cli
    String annotate_csv
  }
  command <<<
    jannovar annotate-csv \
      ~{jan_novar_cli} \
      ~{annotate_csv} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(csv_file) then ("--input " +  '"' + csv_file + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(pos) then ("--pos " +  '"' + pos + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(alt) then ("--alt " +  '"' + alt + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{true="--show-all" false="" show_all} \
      ~{true="--no-3-prime-shifting" false="" no_three_prime_shifting} \
      ~{true="--3-letter-amino-acids" false="" three_letter_amino_acids} \
      ~{true="--report-no-progress" false="" report_no_progress} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(http_proxy) then ("--http-proxy " +  '"' + http_proxy + '"') else ""} \
      ~{if defined(https_proxy) then ("--https-proxy " +  '"' + https_proxy + '"') else ""} \
      ~{if defined(ftp_proxy) then ("--ftp-proxy " +  '"' + ftp_proxy + '"') else ""}
  >>>
  parameter_meta {
    database: "Path to database .ser file"
    csv_file: "CSV file"
    chr: "Column of chr (1 based)"
    pos: "Column of pos (1 based)"
    ref: "Column of ref (1 based)"
    alt: "Column of alt (1 based)"
    type: "Type of csv file. "
    header: "Set if the file contains a header. "
    show_all: "Show all effects"
    no_three_prime_shifting: "Disable shifting towards 3' of transcript"
    three_letter_amino_acids: "Enable usage of 3 letter amino acid codes"
    report_no_progress: "Disable progress report, more quiet mode"
    verbose: "Enable verbose mode"
    very_verbose: "Enable very verbose mode"
    http_proxy: "Set HTTP proxy to use, if any"
    https_proxy: "Set HTTPS proxy to use, if any"
    ftp_proxy: "Set FTP proxy to use, if any"
    jan_novar_cli: ""
    annotate_csv: ""
  }
}