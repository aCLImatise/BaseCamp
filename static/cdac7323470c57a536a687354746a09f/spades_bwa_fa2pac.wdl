version 1.0

task SpadesBwaFa2pac {
  input {
    Boolean fF
    String? bwaBwa
    String? fa2pacFa2pac
    String? inInFasta
    String? outOutPrefix
  }
  command <<<
    spades-bwa fa2pac \
      ~{bwaBwa} \
      ~{true="-f" false="" fF} \
      ~{fa2pacFa2pac} \
      ~{inInFasta} \
      ~{outOutPrefix}
  >>>
}