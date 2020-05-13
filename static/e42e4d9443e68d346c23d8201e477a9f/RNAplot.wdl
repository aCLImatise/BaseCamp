version 1.0

task RNAplot {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean jobsJobs
    File inInFile
    Boolean msaMsa
    Boolean misMis
    Boolean coCoVar
    Boolean alnAln
    Int layoutLayoutType
    Boolean noNoOptimization
    Boolean ignoreIgnoreExteriorIntersections
    Boolean ignoreIgnoreAncestorIntersections
    Boolean ignoreIgnoreSiblingIntersections
    Boolean allowAllowFlipping
    String outputOutputFormat
    String prePre
    String postPost
    Boolean autoAutoId
    String idIdPrefix
  }
  command <<<
    RNAplot \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--jobs" false="" jobsJobs} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--msa" false="" msaMsa} \
      ~{true="--mis" false="" misMis} \
      ~{true="--covar" false="" coCoVar} \
      ~{true="--aln" false="" alnAln} \
      ~{if defined(layoutLayoutType) then ("--layout-type " +  '"' + layoutLayoutType + '"') else ""} \
      ~{true="--noOptimization" false="" noNoOptimization} \
      ~{true="--ignoreExteriorIntersections" false="" ignoreIgnoreExteriorIntersections} \
      ~{true="--ignoreAncestorIntersections" false="" ignoreIgnoreAncestorIntersections} \
      ~{true="--ignoreSiblingIntersections" false="" ignoreIgnoreSiblingIntersections} \
      ~{true="--allowFlipping" false="" allowAllowFlipping} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(prePre) then ("--pre " +  '"' + prePre + '"') else ""} \
      ~{if defined(postPost) then ("--post " +  '"' + postPost + '"') else ""} \
      ~{true="--auto-id" false="" autoAutoId} \
      ~{if defined(idIdPrefix) then ("--id-prefix " +  '"' + idIdPrefix + '"') else ""}
  >>>
}