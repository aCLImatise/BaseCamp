version 1.0

task Obchiral {
  input {
    File filename
  }
  command <<<
    obchiral \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}