version 1.0

task Samcount {
  input {
    Boolean lL
    Boolean rR
  }
  command <<<
    samcount \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR}
  >>>
}