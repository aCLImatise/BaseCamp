version 1.0

task RNAheat {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    String iIPoints
    Boolean noconvNoconv
    Boolean jobsJobs
    File inInFile
    Boolean autoAutoId
    String idIdPrefix
    Int maxMaxBpSpan
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
    Boolean gGQuad
    Boolean circCirc
    String? programProgram
  }
  command <<<
    RNAheat \
      ~{programProgram} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(iIPoints) then ("--ipoints " +  '"' + iIPoints + '"') else ""} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--jobs" false="" jobsJobs} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{if defined(maxMaxBpSpan) then ("--maxBPspan " +  '"' + maxMaxBpSpan + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--gquad" false="" gGQuad} \
      ~{true="--circ" false="" circCirc}
  >>>
}