version 1.0

task DownloadPubmed {
  input {
    String pubmed_slash_usage
  }
  command <<<
    download-pubmed \
      ~{pubmed_slash_usage}
  >>>
  parameter_meta {
    pubmed_slash_usage: ""
  }
}