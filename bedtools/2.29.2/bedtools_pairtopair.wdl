version 1.0

task BedtoolsPairtopair {
  input {
    Boolean fF
    Boolean typeType
    Boolean slopSlop
    Boolean ssSs
    Boolean isIs
    Boolean rdnRdn
    String? optionsOptions
  }
  command <<<
    bedtools pairtopair \
      ~{optionsOptions} \
      ~{true="-f" false="" fF} \
      ~{true="-type" false="" typeType} \
      ~{true="-slop" false="" slopSlop} \
      ~{true="-ss" false="" ssSs} \
      ~{true="-is" false="" isIs} \
      ~{true="-rdn" false="" rdnRdn}
  >>>
}