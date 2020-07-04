version 1.0

task PaladinPrepare {
  input {
    Boolean? reference_database_uniprotkb
    String? skip_download_use
    String? http_socks_proxy
  }
  command <<<
    paladin prepare \
      ~{true="-r" false="" reference_database_uniprotkb} \
      ~{if defined(skip_download_use) then ("-f " +  '"' + skip_download_use + '"') else ""} \
      ~{if defined(http_socks_proxy) then ("-P " +  '"' + http_socks_proxy + '"') else ""}
  >>>
  parameter_meta {
    reference_database_uniprotkb: "<#>         Reference Database: 1: UniProtKB Reviewed (Swiss-Prot) 2: UniProtKB Clustered 90% (UniRef90)"
    skip_download_use: "Skip download, use local copy of reference database (may be indexed)"
    http_socks_proxy: "HTTP or SOCKS proxy address"
  }
}