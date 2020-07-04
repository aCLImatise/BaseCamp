version 1.0

task JannovarDownload {
  input {
    String? database
    String? data_source_list
    String? download_dir
    Array[String] gene_ids
    String? output_file
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String jan_novar_cli
    String download
  }
  command <<<
    jannovar download \
      ~{jan_novar_cli} \
      ~{download} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(data_source_list) then ("--data-source-list " +  '"' + data_source_list + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""} \
      ~{if defined(gene_ids) then ("--gene-ids " +  '"' + gene_ids + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--report-no-progress" false="" report_no_progress} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(http_proxy) then ("--http-proxy " +  '"' + http_proxy + '"') else ""} \
      ~{if defined(https_proxy) then ("--https-proxy " +  '"' + https_proxy + '"') else ""} \
      ~{if defined(ftp_proxy) then ("--ftp-proxy " +  '"' + ftp_proxy + '"') else ""}
  >>>
  parameter_meta {
    database: "Name of database to download, can be given multiple times"
    data_source_list: "INI file with data source list"
    download_dir: "Path to download directory"
    gene_ids: "Optional list of genes to limit creation of database to"
    output_file: "Optional path to output file"
    report_no_progress: "Disable progress report, more quiet mode"
    verbose: "Enable verbose mode"
    very_verbose: "Enable very verbose mode"
    http_proxy: "Set HTTP proxy to use, if any"
    https_proxy: "Set HTTPS proxy to use, if any"
    ftp_proxy: "Set FTP proxy to use, if any"
    jan_novar_cli: ""
    download: ""
  }
}