version 1.0

task ProTRAC2.4.2.pl {
  input {
    Boolean distrDistr
    Boolean clClSize
    Boolean clClHits
    Boolean clClHitsN
    Boolean clClStrand
    Boolean clClSplit
    Boolean noNoHtml
    Boolean notableNotable
    Boolean nofaNofaSpi
    Boolean nofaNofaScl
    Boolean noNoGtf
    Boolean noNoMotif
    Boolean flankFlank
    Boolean ptiPti
  }
  command <<<
    proTRAC_2.4.2.pl \
      ~{true="-distr" false="" distrDistr} \
      ~{true="-clsize" false="" clClSize} \
      ~{true="-clhits" false="" clClHits} \
      ~{true="-clhitsn" false="" clClHitsN} \
      ~{true="-clstrand" false="" clClStrand} \
      ~{true="-clsplit" false="" clClSplit} \
      ~{true="-nohtml" false="" noNoHtml} \
      ~{true="-notable" false="" notableNotable} \
      ~{true="-nofaspi" false="" nofaNofaSpi} \
      ~{true="-nofascl" false="" nofaNofaScl} \
      ~{true="-nogtf" false="" noNoGtf} \
      ~{true="-nomotif" false="" noNoMotif} \
      ~{true="-flank" false="" flankFlank} \
      ~{true="-pti" false="" ptiPti}
  >>>
}