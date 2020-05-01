version 1.0

task RNAfold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean jobsJobs
    File inInFile
    Boolean outfileOutfile
    Boolean nopsNops
    Boolean noNoDp
    Boolean noconvNoconv
    Boolean autoAutoId
    String idIdPrefix
    Int maxMaxBpSpan
    Boolean constraintConstraint
    Boolean batchBatch
    Boolean canonicalCanonicalBpOnly
    Boolean enforceEnforceConstraint
    File shapeShape
    String shapeShapeMethod
    String shapeShapeConversion
    Boolean partPartFunc
    Boolean meMeA
    Boolean circCirc
    Boolean gGQuad
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNAfold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--jobs" false="" jobsJobs} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{true="--noPS" false="" nopsNops} \
      ~{true="--noDP" false="" noNoDp} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{if defined(maxMaxBpSpan) then ("--maxBPspan " +  '"' + maxMaxBpSpan + '"') else ""} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--canonicalBPonly" false="" canonicalCanonicalBpOnly} \
      ~{true="--enforceConstraint" false="" enforceEnforceConstraint} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{if defined(shapeShapeMethod) then ("--shapeMethod " +  '"' + shapeShapeMethod + '"') else ""} \
      ~{if defined(shapeShapeConversion) then ("--shapeConversion " +  '"' + shapeShapeConversion + '"') else ""} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{true="--MEA" false="" meMeA} \
      ~{true="--circ" false="" circCirc} \
      ~{true="--gquad" false="" gGQuad} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}