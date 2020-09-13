version 1.0

task PaladinPrepare {
  input {
    Boolean? reference_database_uniprotkb
    String? skip_download_use
    String? http_socks_proxy
  }
  command <<<
    paladin prepare \
      ~{if (reference_database_uniprotkb) then "-r" else ""} \
      ~{if defined(skip_download_use) then ("-f " +  '"' + skip_download_use + '"') else ""} \
      ~{if defined(http_socks_proxy) then ("-P " +  '"' + http_socks_proxy + '"') else ""}
  >>>
  parameter_meta {
    reference_database_uniprotkb: "<#>         Reference Database:\\n1: UniProtKB Reviewed (Swiss-Prot)\\n2: UniProtKB Clustered 90% (UniRef90)"
    skip_download_use: "Skip download, use local copy of reference database (may be indexed)"
    http_socks_proxy: "HTTP or SOCKS proxy address"
  }
  output {
    File out_stdout = stdout()
  }
}