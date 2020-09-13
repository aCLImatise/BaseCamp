version 1.0

task CountChars {
  input {
    String char
    File file
  }
  command <<<
    countChars \
      ~{char} \
      ~{file}
  >>>
  parameter_meta {
    char: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}