version 1.0

task MockinbirdPreprocessOutputDir {
  input {
    String? log_level
    String mock_in_bird
    String preprocess
  }
  command <<<
    mockinbird preprocess output_dir \
      ~{mock_in_bird} \
      ~{preprocess} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_level: ""
    mock_in_bird: ""
    preprocess: ""
  }
  output {
    File out_stdout = stdout()
  }
}