version 1.0

task StarfishValidate {
  input {
    File? experiment_json
    Boolean? fuzz
  }
  command <<<
    starfish validate \
      ~{if defined(experiment_json) then ("--experiment-json " +  '"' + experiment_json + '"') else ""} \
      ~{if (fuzz) then "--fuzz" else ""}
  >>>
  parameter_meta {
    experiment_json: ""
    fuzz: ""
  }
  output {
    File out_stdout = stdout()
  }
}