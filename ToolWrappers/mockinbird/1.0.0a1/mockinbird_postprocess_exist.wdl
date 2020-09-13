version 1.0

task MockinbirdPostprocessExist {
  input {
    String? prefix
    String mock_in_bird
    String post_process
  }
  command <<<
    mockinbird postprocess exist \
      ~{mock_in_bird} \
      ~{post_process} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    prefix: ""
    mock_in_bird: ""
    post_process: ""
  }
  output {
    File out_stdout = stdout()
  }
}