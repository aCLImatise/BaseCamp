version 1.0

task JannovarAnnotatePos {
  input {
    String? database
    String? genomic_change
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
    String annotate_pos
  }
  command <<<
    jannovar annotate-pos \
      ~{jan_novar_cli} \
      ~{annotate_pos} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(genomic_change) then ("--genomic-change " +  '"' + genomic_change + '"') else ""} \
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
    genomic_change: "Genomic change to annotate, you can give multiple ones"
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
    annotate_pos: ""
  }
}