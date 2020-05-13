version 1.0

task RNAalifold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean jobsJobs
    Boolean noconvNoconv
    Boolean colorColor
    Boolean alnAln
    Boolean alnAlnStk
    Boolean nopsNops
    Boolean noNoDp
    String inputInputFormat
    Boolean continuousContinuousIds
    Boolean autoAutoId
    String idIdPrefix
    Int maxMaxBpSpan
    Boolean constraintConstraint
    Boolean batchBatch
    Boolean enforceEnforceConstraint
    Boolean ssSsCons
    File shapeShape
    String shapeShapeMethod
    Boolean partPartFunc
    Boolean meMeA
    Boolean misMis
    Int stochStochBt
    Int stochStochBtEn
    Boolean nonredundantNonredundant
    Boolean circCirc
    Boolean gGQuad
    Boolean sciSci
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String cCFactor
    String nNFactor
    Boolean endEndGaps
    String riboRiboSumFile
    Boolean riboRiboSumScoring
    Boolean oldOld
    String paramParamFile
  }
  command <<<
    RNAalifold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--jobs" false="" jobsJobs} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--color" false="" colorColor} \
      ~{true="--aln" false="" alnAln} \
      ~{true="--aln-stk" false="" alnAlnStk} \
      ~{true="--noPS" false="" nopsNops} \
      ~{true="--noDP" false="" noNoDp} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{true="--continuous-ids" false="" continuousContinuousIds} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{if defined(maxMaxBpSpan) then ("--maxBPspan " +  '"' + maxMaxBpSpan + '"') else ""} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--enforceConstraint" false="" enforceEnforceConstraint} \
      ~{true="--SS_cons" false="" ssSsCons} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{if defined(shapeShapeMethod) then ("--shapeMethod " +  '"' + shapeShapeMethod + '"') else ""} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{true="--MEA" false="" meMeA} \
      ~{true="--mis" false="" misMis} \
      ~{if defined(stochStochBt) then ("--stochBT " +  '"' + stochStochBt + '"') else ""} \
      ~{if defined(stochStochBtEn) then ("--stochBT_en " +  '"' + stochStochBtEn + '"') else ""} \
      ~{true="--nonRedundant" false="" nonredundantNonredundant} \
      ~{true="--circ" false="" circCirc} \
      ~{true="--gquad" false="" gGQuad} \
      ~{true="--sci" false="" sciSci} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(cCFactor) then ("--cfactor " +  '"' + cCFactor + '"') else ""} \
      ~{if defined(nNFactor) then ("--nfactor " +  '"' + nNFactor + '"') else ""} \
      ~{true="--endgaps" false="" endEndGaps} \
      ~{if defined(riboRiboSumFile) then ("--ribosum_file " +  '"' + riboRiboSumFile + '"') else ""} \
      ~{true="--ribosum_scoring" false="" riboRiboSumScoring} \
      ~{true="--old" false="" oldOld} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}