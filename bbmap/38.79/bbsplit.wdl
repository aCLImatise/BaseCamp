version 1.0

task Bbsplit.sh {
  input {
    String? bestBest
    String? tossToss
    String? randomRandom
    String? allAll
    String? bestBest
    String? tossToss
    String? allAll
    String? splitSplit
  }
  command <<<
    bbsplit.sh \
      ~{bestBest} \
      ~{bestBest} \
      ~{tossToss} \
      ~{tossToss} \
      ~{randomRandom} \
      ~{allAll} \
      ~{allAll} \
      ~{splitSplit}
  >>>
}