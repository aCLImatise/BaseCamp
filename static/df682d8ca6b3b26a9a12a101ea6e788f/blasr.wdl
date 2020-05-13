version 1.0

task Blasr {
  input {
    String saSa
    String ctabCtab
    String regionRegionTable
    Boolean ignoreIgnoreHqRegions
    Boolean printsPrintsAmQv
    Boolean fastFastSdp
    String maxMaxScore
    String nprocNproc
    String startStart
    String strideStride
    Boolean subsampleSubsample
  }
  command <<<
    blasr \
      ~{if defined(saSa) then ("-sa " +  '"' + saSa + '"') else ""} \
      ~{if defined(ctabCtab) then ("-ctab " +  '"' + ctabCtab + '"') else ""} \
      ~{if defined(regionRegionTable) then ("-regionTable " +  '"' + regionRegionTable + '"') else ""} \
      ~{true="-ignoreHQRegions" false="" ignoreIgnoreHqRegions} \
      ~{true="-printSAMQV" false="" printsPrintsAmQv} \
      ~{true="-fastSDP" false="" fastFastSdp} \
      ~{if defined(maxMaxScore) then ("-maxScore " +  '"' + maxMaxScore + '"') else ""} \
      ~{if defined(nprocNproc) then ("-nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(startStart) then ("-start " +  '"' + startStart + '"') else ""} \
      ~{if defined(strideStride) then ("-stride " +  '"' + strideStride + '"') else ""} \
      ~{true="-subsample" false="" subsampleSubsample}
  >>>
}