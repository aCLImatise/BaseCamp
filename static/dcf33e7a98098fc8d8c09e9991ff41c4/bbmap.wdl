version 1.0

task Bbmap.sh {
  input {
    String? bestBest
    String? tossToss
    String? randomRandom
    String? allAll
  }
  command <<<
    bbmap.sh \
      ~{bestBest} \
      ~{tossToss} \
      ~{randomRandom} \
      ~{allAll}
  >>>
}