version 1.0

task Mummerplot {
  input {
    String match_file
  }
  command <<<
    mummerplot \
      ~{match_file}
  >>>
  parameter_meta {
    match_file: ""
  }
}