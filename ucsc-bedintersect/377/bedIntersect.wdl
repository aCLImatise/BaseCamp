version 1.0

task BedIntersect {
  input {
    Boolean aAHitAny
    Boolean minMinCoverage
    Boolean bBScore
    Boolean tabTab
    Boolean allowAllowStartEqualEnd
  }
  command <<<
    bedIntersect \
      ~{true="-aHitAny" false="" aAHitAny} \
      ~{true="-minCoverage" false="" minMinCoverage} \
      ~{true="-bScore" false="" bBScore} \
      ~{true="-tab" false="" tabTab} \
      ~{true="-allowStartEqualEnd" false="" allowAllowStartEqualEnd}
  >>>
}