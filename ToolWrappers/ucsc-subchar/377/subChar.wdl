version 1.0

task SubChar {
  input {
    String old_char
    String new_char
    File var_file
  }
  command <<<
    subChar \
      ~{old_char} \
      ~{new_char} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    old_char: ""
    new_char: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}