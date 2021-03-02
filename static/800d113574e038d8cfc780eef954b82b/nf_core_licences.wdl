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
  runtime {
    docker: "None"
  }
  parameter_meta {
    json: "Print output in JSON"
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}