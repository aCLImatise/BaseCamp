version 1.0

task StagJoin.pl {
  input {
    Boolean pP
    Boolean wW
    String? stagStagJoin
    String? stagStagJoin
  }
  command <<<
    stag-join.pl \
      ~{stagStagJoin} \
      ~{true="-p" false="" pP} \
      ~{true="-w" false="" wW} \
      ~{stagStagJoin}
  >>>
}