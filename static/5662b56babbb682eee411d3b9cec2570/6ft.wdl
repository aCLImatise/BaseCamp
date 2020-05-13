version 1.0

task 6ft {
  input {
    Boolean rR
    Boolean sS
    Boolean wW
  }
  command <<<
    6ft \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-W" false="" wW}
  >>>
}