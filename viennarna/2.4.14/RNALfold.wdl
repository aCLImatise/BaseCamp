version 1.0

task RNALfold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Int spanSpan
    Boolean outfileOutfile
    File inInFile
    Boolean autoAutoId
    Boolean zscoreZscore
    Boolean gGQuad
    File shapeShape
    String tempTemp
    Int danglesDangles
    Boolean noNoLp
    String paramParamFile
  }
  command <<<
    RNALfold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{true="--zscore" false="" zscoreZscore} \
      ~{true="--gquad" false="" gGQuad} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}