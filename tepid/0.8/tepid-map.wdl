version 1.0

task TepidMap {
  input {
    Boolean rR
    Boolean zZ
  }
  command <<<
    tepid-map \
      ~{true="-r" false="" rR} \
      ~{true="-z" false="" zZ}
  >>>
}