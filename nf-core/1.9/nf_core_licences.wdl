version 1.0

task NfCoreLicences {
  input {
    Boolean? json
    String pipeline_name
  }
  command <<<
    nf-core licences \
      ~{pipeline_name} \
      ~{true="--json" false="" json}
  >>>
  parameter_meta {
    json: "Print output in JSON"
    pipeline_name: ""
  }
}