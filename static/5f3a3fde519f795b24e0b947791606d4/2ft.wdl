version 1.0

task 2ft {
  input {
    Boolean rR
    Boolean sS
    Boolean wW
  }
  command <<<
    2ft \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-W" false="" wW}
  >>>
}