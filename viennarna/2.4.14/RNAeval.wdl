version 1.0

task RNAeval {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean jobsJobs
    File inInFile
    Boolean msaMsa
    Boolean autoAutoId
    String idIdPrefix
    String idIdDelim
    Int danglesDangles
    Int energyEnergyModel
    String paramParamFile
    Boolean circCirc
    Boolean gGQuad
    Boolean logLogMl
    String shapeShape
    Boolean shapeShapeMethod
    String shapeShapeConversion
    Boolean misMis
    String cCFactor
    String nNFactor
    String riboRiboSumFile
    Boolean riboRiboSumScoring
    Boolean oldOld
    String? programProgram
  }
  command <<<
    RNAeval \
      ~{programProgram} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--jobs" false="" jobsJobs} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--msa" false="" msaMsa} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{if defined(idIdDelim) then ("--id-delim " +  '"' + idIdDelim + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{if defined(energyEnergyModel) then ("--energyModel " +  '"' + energyEnergyModel + '"') else ""} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{true="--circ" false="" circCirc} \
      ~{true="--gquad" false="" gGQuad} \
      ~{true="--logML" false="" logLogMl} \
      ~{if defined(shapeShape) then ("--shape " +  '"' + shapeShape + '"') else ""} \
      ~{true="--shapeMethod" false="" shapeShapeMethod} \
      ~{if defined(shapeShapeConversion) then ("--shapeConversion " +  '"' + shapeShapeConversion + '"') else ""} \
      ~{true="--mis" false="" misMis} \
      ~{if defined(cCFactor) then ("--cfactor " +  '"' + cCFactor + '"') else ""} \
      ~{if defined(nNFactor) then ("--nfactor " +  '"' + nNFactor + '"') else ""} \
      ~{if defined(riboRiboSumFile) then ("--ribosum_file " +  '"' + riboRiboSumFile + '"') else ""} \
      ~{true="--ribosum_scoring" false="" riboRiboSumScoring} \
      ~{true="--old" false="" oldOld}
  >>>
}