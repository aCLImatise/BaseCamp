version 1.0

task NfCoreList {
  input {
    Boolean? sort
    Boolean? json
    String filter_keywords
  }
  command <<<
    nf-core list \
      ~{filter_keywords} \
      ~{true="--sort" false="" sort} \
      ~{true="--json" false="" json}
  >>>
  parameter_meta {
    sort: "[release|pulled|name|stars] How to sort listed pipelines"
    json: "Print full output as JSON"
    filter_keywords: ""
  }
}