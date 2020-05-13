version 1.0

task RNAplfold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Int winsizeWinsize
    Int spanSpan
    Float cutCutOff
    Boolean printPrintOnTheFly
    Int uULength
    Boolean openingOpeningEnergies
    Boolean noconvNoconv
    Boolean autoAutoId
    String idIdPrefix
    File shapeShape
    Boolean shapeShapeMethod
    String shapeShapeConversion
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
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(winsizeWinsize) then ("--winsize " +  '"' + winsizeWinsize + '"') else ""} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--print_onthefly" false="" printPrintOnTheFly} \
      ~{if defined(uULength) then ("--ulength " +  '"' + uULength + '"') else ""} \
      ~{true="--opening_energies" false="" openingOpeningEnergies} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{true="--shapeMethod" false="" shapeShapeMethod} \
      ~{if defined(shapeShapeConversion) then ("--shapeConversion " +  '"' + shapeShapeConversion + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--binaries" false="" binariesBinaries}
  >>>
}