version 1.0

task NfcoreLaunch {
  input {
    File? params
    Boolean? direct
    String pipeline_name
  }
  command <<<
    nf_core launch \
      ~{pipeline_name} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{if (direct) then "--direct" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    params: "Local parameter settings file in JSON."
    direct: "Uses given values from the parameter file directly."
    pipeline_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}