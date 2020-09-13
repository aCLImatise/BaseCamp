version 1.0

task ToUpper {
  input {
    String in_file
  }
  command <<<
    toUpper \
      ~{in_file}
  >>>
  parameter_meta {
    in_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}