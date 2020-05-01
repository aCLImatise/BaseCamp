version 1.0

task PairToPair {
  input {
    Boolean fF
    Boolean typeType
    Boolean slopSlop
    Boolean ssSs
    Boolean isIs
    Boolean rdnRdn
    String? bedBedTools
    String? pairPairToPair
    String? optionsOptions
  }
  command <<<
    pairToPair \
      ~{bedBedTools} \
      ~{true="-f" false="" fF} \
      ~{true="-type" false="" typeType} \
      ~{true="-slop" false="" slopSlop} \
      ~{true="-ss" false="" ssSs} \
      ~{true="-is" false="" isIs} \
      ~{true="-rdn" false="" rdnRdn} \
      ~{pairPairToPair} \
      ~{optionsOptions}
  >>>
}