version 1.0

task SubChar {
  input {
    String old_char
    String new_char
    File file
  }
  command <<<
    subChar \
      ~{old_char} \
      ~{new_char} \
      ~{file}
  >>>
  parameter_meta {
    old_char: ""
    new_char: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}