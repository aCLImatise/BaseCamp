version 1.0

task JannovarAnnotatepos {
  input {
    File? database
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
    jannovar annotate_pos \
      ~{jan_novar_cli} \
      ~{annotate_pos} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(genomic_change) then ("--genomic-change " +  '"' + genomic_change + '"') else ""} \
      ~{if (show_all) then "--show-all" else ""} \
      ~{if (no_three_prime_shifting) then "--no-3-prime-shifting" else ""} \
      ~{if (three_letter_amino_acids) then "--3-letter-amino-acids" else ""} \
      ~{if (report_no_progress) then "--report-no-progress" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
      ~{if defined(http_proxy) then ("--http-proxy " +  '"' + http_proxy + '"') else ""} \
      ~{if defined(https_proxy) then ("--https-proxy " +  '"' + https_proxy + '"') else ""} \
      ~{if defined(ftp_proxy) then ("--ftp-proxy " +  '"' + ftp_proxy + '"') else ""}
  >>>
  parameter_meta {
    database: "Path to database .ser file"
    genomic_change: "Genomic change to annotate,  you can give multiple\\nones"
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
  output {
    File out_stdout = stdout()
  }
}