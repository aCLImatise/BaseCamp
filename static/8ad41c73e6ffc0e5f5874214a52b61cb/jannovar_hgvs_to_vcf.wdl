version 1.0

task JannovarHgvsToVcf {
  input {
    String? reference_fast_a
    String? database
    String? input_txt
    String? output_vcf
    String? show_all
    Boolean? no_three_prime_shifting
    Boolean? three_letter_amino_acids
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String jan_novar_cli
    String hgvs_to_vcf
  }
  command <<<
    jannovar hgvs-to-vcf \
      ~{jan_novar_cli} \
      ~{hgvs_to_vcf} \
      ~{if defined(reference_fast_a) then ("--reference-fasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(input_txt) then ("--input-txt " +  '"' + input_txt + '"') else ""} \
      ~{if defined(output_vcf) then ("--output-vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(show_all) then ("--show-all " +  '"' + show_all + '"') else ""} \
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
    reference_fast_a: "Path to reference FASTA file"
    database: "Path to database .ser file"
    input_txt: "Input file with HGVS transcript-level changes, line-by-line"
    output_vcf: "Output VCF file with chromosome-level changes"
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
    hgvs_to_vcf: ""
  }
}