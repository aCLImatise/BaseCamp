version 1.0

task Htmltree {
  input {
    Boolean dD
    Boolean wW
  }
  command <<<
    htmltree \
      ~{true="-D" false="" dD} \
      ~{true="-w" false="" wW}
  >>>
}