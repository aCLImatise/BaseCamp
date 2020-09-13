version 1.0

task Hmminfo {
  input {
    Boolean? models
    Boolean? general
    Int? durations
  }
  command <<<
    hmm_info \
      ~{if (models) then "-models" else ""} \
      ~{if (general) then "-general" else ""} \
      ~{if defined(durations) then ("-durations " +  '"' + durations + '"') else ""}
  >>>
  parameter_meta {
    models: ""
    general: ""
    durations: ""
  }
  output {
    File out_stdout = stdout()
  }
}