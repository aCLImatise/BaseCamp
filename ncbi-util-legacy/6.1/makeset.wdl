version 1.0

task Makeset {
  input {
    Boolean rR
  }
  command <<<
    makeset \
      ~{true="-r" false="" rR}
  >>>
}