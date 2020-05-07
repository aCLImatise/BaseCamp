version 1.0

task StagFindsubtree.pl {
  input {
    Boolean pP
    Boolean wW
    String? nodeNode
  }
  command <<<
    stag-findsubtree.pl \
      ~{nodeNode} \
      ~{true="-p" false="" pP} \
      ~{true="-w" false="" wW}
  >>>
}