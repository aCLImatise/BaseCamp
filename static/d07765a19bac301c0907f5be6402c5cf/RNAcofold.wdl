version 1.0

task RNAcofold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean jobsJobs
    Boolean nopsNops
    Boolean noconvNoconv
    Boolean autoAutoId
    String idIdPrefix
    Int maxMaxBpSpan
    Boolean constraintConstraint
    Boolean batchBatch
    Boolean canonicalCanonicalBpOnly
    Boolean enforceEnforceConstraint
    File shapeShape
    Boolean shapeShapeMethod
    String shapeShapeConversion
    Boolean partPartFunc
    Boolean allAllPf
    Boolean concentrationsConcentrations
    File concConcFile
    Boolean centroidCentroid
    Boolean meMeA
    Boolean gGQuad
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNAcofold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--jobs" false="" jobsJobs} \
      ~{true="--noPS" false="" nopsNops} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{if defined(maxMaxBpSpan) then ("--maxBPspan " +  '"' + maxMaxBpSpan + '"') else ""} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--canonicalBPonly" false="" canonicalCanonicalBpOnly} \
      ~{true="--enforceConstraint" false="" enforceEnforceConstraint} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{true="--shapeMethod" false="" shapeShapeMethod} \
      ~{if defined(shapeShapeConversion) then ("--shapeConversion " +  '"' + shapeShapeConversion + '"') else ""} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{true="--all_pf" false="" allAllPf} \
      ~{true="--concentrations" false="" concentrationsConcentrations} \
      ~{if defined(concConcFile) then ("--concfile " +  '"' + concConcFile + '"') else ""} \
      ~{true="--centroid" false="" centroidCentroid} \
      ~{true="--MEA" false="" meMeA} \
      ~{true="--gquad" false="" gGQuad} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}