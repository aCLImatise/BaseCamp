version 1.0

task NfcoreList {
  input {
    Boolean? sort
    Boolean? json
    String filter_keywords
  }
  command <<<
    nf_core list \
      ~{filter_keywords} \
      ~{if (sort) then "--sort" else ""} \
      ~{if (json) then "--json" else ""}
  >>>
  parameter_meta {
    sort: "[release|pulled|name|stars]\\nHow to sort listed pipelines"
    json: "Print full output as JSON"
    filter_keywords: ""
  }
  output {
    File out_stdout = stdout()
  }
}