version 1.0

task RNALalifold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean noconvNoconv
    String inputInputFormat
    Boolean csvCsv
    Boolean alnAln
    Boolean alnAlnEps
    Boolean alnAlnEpsSs
    Boolean alnAlnStk
    Boolean autoAutoId
    String idIdPrefix
    Boolean splitSplitContributions
    File shapeShape
    String shapeShapeMethod
    Int maxMaxBpSpan
    String thresholdThreshold
    Boolean misMis
    Boolean gGQuad
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
    String cCFactor
    String nNFactor
    String riboRiboSumFile
    Boolean riboRiboSumScoring
    File? fileFile1aln
  }
  command <<<
    RNALalifold \
      ~{fileFile1aln} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--aln" false="" alnAln} \
      ~{true="--aln-EPS" false="" alnAlnEps} \
      ~{true="--aln-EPS-ss" false="" alnAlnEpsSs} \
      ~{true="--aln-stk" false="" alnAlnStk} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{true="--split-contributions" false="" splitSplitContributions} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{if defined(shapeShapeMethod) then ("--shapeMethod " +  '"' + shapeShapeMethod + '"') else ""} \
      ~{if defined(maxMaxBpSpan) then ("--maxBPspan " +  '"' + maxMaxBpSpan + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--mis" false="" misMis} \
      ~{true="--gquad" false="" gGQuad} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(cCFactor) then ("--cfactor " +  '"' + cCFactor + '"') else ""} \
      ~{if defined(nNFactor) then ("--nfactor " +  '"' + nNFactor + '"') else ""} \
      ~{if defined(riboRiboSumFile) then ("--ribosum_file " +  '"' + riboRiboSumFile + '"') else ""} \
      ~{true="--ribosum_scoring" false="" riboRiboSumScoring}
  >>>
}