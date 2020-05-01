version 1.0

task FindHiCCompartments.pl {
  input {
    Boolean oppOpp
    Boolean threshThresh
    Boolean bgBg
    String corrCorr
    Boolean corrCorrDiff
    Boolean minMin
  }
  command <<<
    findHiCCompartments.pl \
      ~{true="-opp" false="" oppOpp} \
      ~{true="-thresh" false="" threshThresh} \
      ~{true="-bg" false="" bgBg} \
      ~{if defined(corrCorr) then ("-corr " +  '"' + corrCorr + '"') else ""} \
      ~{true="-corrDiff" false="" corrCorrDiff} \
      ~{true="-min" false="" minMin}
  >>>
}