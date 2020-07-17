version 1.0

task Zorro {
  input {
    File filename
  }
  command <<<
    zorro \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}