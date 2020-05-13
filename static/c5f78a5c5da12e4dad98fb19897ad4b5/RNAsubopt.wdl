version 1.0

task RNAsubopt {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean noconvNoconv
    File inInFile
    Boolean outfileOutfile
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
    String deltaDeltaEnergy
    String deltaDeltaEnergyPost
    Boolean sortedSorted
    String stochStochBt
    String stochStochBtEn
    Boolean nonredundantNonredundant
    Boolean circCirc
    Boolean dosDos
    Boolean zukerZuker
    Boolean gGQuad
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    Boolean logLogMl
    String paramParamFile
  }
  command <<<
    RNAsubopt \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--outfile" false="" outfileOutfile} \
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
      ~{if defined(deltaDeltaEnergy) then ("--deltaEnergy " +  '"' + deltaDeltaEnergy + '"') else ""} \
      ~{if defined(deltaDeltaEnergyPost) then ("--deltaEnergyPost " +  '"' + deltaDeltaEnergyPost + '"') else ""} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(stochStochBt) then ("--stochBT " +  '"' + stochStochBt + '"') else ""} \
      ~{if defined(stochStochBtEn) then ("--stochBT_en " +  '"' + stochStochBtEn + '"') else ""} \
      ~{true="--nonRedundant" false="" nonredundantNonredundant} \
      ~{true="--circ" false="" circCirc} \
      ~{true="--dos" false="" dosDos} \
      ~{true="--zuker" false="" zukerZuker} \
      ~{true="--gquad" false="" gGQuad} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{true="--logML" false="" logLogMl} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}