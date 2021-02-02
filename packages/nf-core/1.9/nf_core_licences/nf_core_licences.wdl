version 1.0

task NfcoreLicences {
  input {
    Boolean? json
    String pipeline_name
  }
  command <<<
    nf_core licences \
      ~{pipeline_name} \
      ~{if (json) then "--json" else ""}
  >>>
  parameter_meta {
    json: "Print output in JSON"
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}