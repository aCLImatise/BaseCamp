version 1.0

task JannovarDblist {
  input {
    File? data_source_list
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String jan_novar_cli
    String db_list
  }
  command <<<
    jannovar db_list \
      ~{jan_novar_cli} \
      ~{db_list} \
      ~{if defined(data_source_list) then ("--data-source-list " +  '"' + data_source_list + '"') else ""} \
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
    data_source_list: "INI file with data source list"
    report_no_progress: "Disable progress report, more quiet mode"
    verbose: "Enable verbose mode"
    very_verbose: "Enable very verbose mode"
    http_proxy: "Set HTTP proxy to use, if any"
    https_proxy: "Set HTTPS proxy to use, if any"
    ftp_proxy: "Set FTP proxy to use, if any"
    jan_novar_cli: ""
    db_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}