version 1.0

task NfcoreList {
  input {
    Boolean? sort
    Boolean? json
    Boolean? show_archived
    String filter_keywords
  }
  command <<<
    nf_core list \
      ~{filter_keywords} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (show_archived) then "--show-archived" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.3--pyh3252c3a_0"
  }
  parameter_meta {
    sort: "[release|pulled|name|stars]\\nHow to sort listed pipelines"
    json: "Print full output as JSON"
    show_archived: "Print archived workflows"
    filter_keywords: ""
  }
  output {
    File out_stdout = stdout()
  }
}