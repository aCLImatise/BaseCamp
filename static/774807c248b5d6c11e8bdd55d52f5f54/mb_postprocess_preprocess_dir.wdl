version 1.0

task MbPostprocessPreprocessDir {
  input {
    String? prefix
    String mock_in_bird_post_process
  }
  command <<<
    mb-postprocess preprocess_dir \
      ~{mock_in_bird_post_process} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    prefix: ""
    mock_in_bird_post_process: ""
  }
}