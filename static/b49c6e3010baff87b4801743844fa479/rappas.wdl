version 1.0

task Rappas {
  input {
    Boolean xmsXms
    Boolean xXMx
  }
  command <<<
    rappas \
      ~{true="-Xms" false="" xmsXms} \
      ~{true="-Xmx" false="" xXMx}
  >>>
}