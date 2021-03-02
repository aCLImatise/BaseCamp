version 1.0

task MbpostprocessPreprocessDir {
  input {
    String? prefix
    String mock_in_bird_post_process
  }
  command <<<
    mb_postprocess preprocess_dir \
      ~{mock_in_bird_post_process} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: ""
    mock_in_bird_post_process: ""
  }
  output {
    File out_stdout = stdout()
  }
}