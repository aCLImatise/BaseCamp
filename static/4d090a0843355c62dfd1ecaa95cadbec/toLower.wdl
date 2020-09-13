version 1.0

task ToLower {
  input {
    String in_file
  }
  command <<<
    toLower \
      ~{in_file}
  >>>
  parameter_meta {
    in_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}