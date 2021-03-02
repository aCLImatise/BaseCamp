version 1.0

task StarfishValidateExperiment {
  input {
    String json_file_or_url
  }
  command <<<
    starfish validate experiment \
      ~{json_file_or_url}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    json_file_or_url: ""
  }
  output {
    File out_stdout = stdout()
  }
}