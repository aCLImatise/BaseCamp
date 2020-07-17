version 1.0

task NfCoreLaunch {
  input {
    String? params
    Boolean? direct
    String pipeline_name
  }
  command <<<
    nf-core launch \
      ~{pipeline_name} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""} \
      ~{true="--direct" false="" direct}
  >>>
  parameter_meta {
    params: "Local parameter settings file in JSON."
    direct: "Uses given values from the parameter file directly."
    pipeline_name: ""
  }
}