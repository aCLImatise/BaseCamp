version 1.0

task RNAplfold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Int winsizeWinsize
    Int spanSpan
    Float cutCutOff
    Boolean printPrintOnTheFly
    Int uULength
    Boolean openingOpeningEnergies
    Boolean noconvNoconv
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
    Boolean binariesBinaries
  }
  command <<<
    RNAplfold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(winsizeWinsize) then ("--winsize " +  '"' + winsizeWinsize + '"') else ""} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--print_onthefly" false="" printPrintOnTheFly} \
      ~{if defined(uULength) then ("--ulength " +  '"' + uULength + '"') else ""} \
      ~{true="--opening_energies" false="" openingOpeningEnergies} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--binaries" false="" binariesBinaries}
  >>>
}