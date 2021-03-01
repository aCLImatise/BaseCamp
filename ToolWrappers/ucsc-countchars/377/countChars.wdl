version 1.0

task CountChars {
  input {
    String char
    File var_file
  }
  command <<<
    countChars \
      ~{char} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    char: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}