version 1.0

task MapPacBio.sh {
  input {
    String? bestBest
    String? tossToss
    String? randomRandom
    String? allAll
  }
  command <<<
    mapPacBio.sh \
      ~{bestBest} \
      ~{tossToss} \
      ~{randomRandom} \
      ~{allAll}
  >>>
}