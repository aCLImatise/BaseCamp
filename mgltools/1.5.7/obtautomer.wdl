version 1.0

task Obtautomer {
  input {
    Boolean? c
    File filename
  }
  command <<<
    obtautomer \
      ~{filename} \
      ~{true="-c" false="" c}
  >>>
  parameter_meta {
    c: ""
    filename: ""
  }
}