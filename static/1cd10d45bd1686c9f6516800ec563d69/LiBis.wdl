version 1.0

task LiBis {
  input {
    File fileFile
    String settingSettingFile
    Boolean nN
    String clipClip
    Boolean lL
    String genomeGenome
    String windowWindow
    String stepStep
    String processProcess
    String refRef
    Boolean qualityQualityControl
    Boolean trimTrim
    String binsizeBinsize
    String filterFilter
    String bamBam
    Boolean mMCall
    Boolean plotPlot
    Boolean noNoCheck
    Boolean moabMoabSModule
    Boolean multipleMultipleMapping
    Boolean pairPairEndFilter
    Boolean bamBamU
    Boolean gzipGzip
    Boolean fullFullMode
  }
  command <<<
    LiBis \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(settingSettingFile) then ("--settingfile " +  '"' + settingSettingFile + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(clipClip) then ("--clip " +  '"' + clipClip + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(processProcess) then ("--process " +  '"' + processProcess + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--QualityControl" false="" qualityQualityControl} \
      ~{true="--trim" false="" trimTrim} \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{true="--mcall" false="" mMCall} \
      ~{true="--plot" false="" plotPlot} \
      ~{true="--nocheck" false="" noNoCheck} \
      ~{true="--MOABSmodule" false="" moabMoabSModule} \
      ~{true="--multiplemapping" false="" multipleMultipleMapping} \
      ~{true="--pairendfilter" false="" pairPairEndFilter} \
      ~{true="--bamu" false="" bamBamU} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--fullmode" false="" fullFullMode}
  >>>
}