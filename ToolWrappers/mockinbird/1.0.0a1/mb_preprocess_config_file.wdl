version 1.0

task MbpreprocessConfigFile {
  input {
    String? log_level
    String mock_in_bird_preprocess
  }
  command <<<
    mb_preprocess config_file \
      ~{mock_in_bird_preprocess} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_level: ""
    mock_in_bird_preprocess: ""
  }
  output {
    File out_stdout = stdout()
  }
}