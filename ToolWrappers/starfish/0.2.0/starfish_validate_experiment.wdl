version 1.0

task StarfishValidateExperiment {
  input {
    Boolean? fuzz
    String json_file_or_url
  }
  command <<<
    starfish validate experiment \
      ~{json_file_or_url} \
      ~{if (fuzz) then "--fuzz" else ""}
  >>>
  parameter_meta {
    fuzz: ""
    json_file_or_url: ""
  }
  output {
    File out_stdout = stdout()
  }
}