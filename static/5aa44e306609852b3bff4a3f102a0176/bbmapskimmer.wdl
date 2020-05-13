version 1.0

task Bbmapskimmer.sh {
  input {
    String? bestBest
    String? tossToss
    String? randomRandom
    String? allAll
  }
  command <<<
    bbmapskimmer.sh \
      ~{bestBest} \
      ~{tossToss} \
      ~{randomRandom} \
      ~{allAll}
  >>>
}