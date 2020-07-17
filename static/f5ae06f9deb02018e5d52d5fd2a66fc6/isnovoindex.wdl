version 1.0

task Isnovoindex {
  input {
    File filename
  }
  command <<<
    isnovoindex \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}