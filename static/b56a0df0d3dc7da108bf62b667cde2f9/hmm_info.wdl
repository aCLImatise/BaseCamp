version 1.0

task Hmminfo {
  input {
    Boolean? models
  }
  command <<<
    hmm_info \
      ~{if (models) then "-models" else ""}
  >>>
  parameter_meta {
    models: "-general\\n-durations <length>\\n"
  }
  output {
    File out_stdout = stdout()
  }
}