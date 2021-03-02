version 1.0

task JannovarStatistics {
  input {
    File? input_vcf
    File? output_report
    File? database
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String jan_novar_cli
    String statistics
  }
  command <<<
    jannovar statistics \
      ~{jan_novar_cli} \
      ~{statistics} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_report) then ("--output-report " +  '"' + output_report + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (report_no_progress) then "--report-no-progress" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
      ~{if defined(http_proxy) then ("--http-proxy " +  '"' + http_proxy + '"') else ""} \
      ~{if defined(https_proxy) then ("--https-proxy " +  '"' + https_proxy + '"') else ""} \
      ~{if defined(ftp_proxy) then ("--ftp-proxy " +  '"' + ftp_proxy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jannovar-cli:0.35--0"
  }
  parameter_meta {
    input_vcf: "Path to input VCF file"
    output_report: "Path to output report TXT file"
    database: "Path to database .ser file"
    report_no_progress: "Disable progress report, more quiet mode"
    verbose: "Enable verbose mode"
    very_verbose: "Enable very verbose mode"
    http_proxy: "Set HTTP proxy to use, if any"
    https_proxy: "Set HTTPS proxy to use, if any"
    ftp_proxy: "Set FTP proxy to use, if any"
    jan_novar_cli: ""
    statistics: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_report = "${in_output_report}"
  }
}