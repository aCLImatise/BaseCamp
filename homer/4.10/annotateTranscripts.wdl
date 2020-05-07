version 1.0

task AnnotateTranscripts.pl {
  input {
    Boolean noNoRepeats
    Boolean minMinOverlap
    Boolean promoterPromoterSize
    Boolean repeatRepeatSize
    String dD
    Boolean minMin
    Boolean minMinP
    Boolean strandStrand
    Boolean mergeMerge
  }
  command <<<
    annotateTranscripts.pl \
      ~{true="-noRepeats" false="" noNoRepeats} \
      ~{true="-minOverlap" false="" minMinOverlap} \
      ~{true="-promoterSize" false="" promoterPromoterSize} \
      ~{true="-repeatSize" false="" repeatRepeatSize} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-min" false="" minMin} \
      ~{true="-minp" false="" minMinP} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-merge" false="" mergeMerge}
  >>>
}