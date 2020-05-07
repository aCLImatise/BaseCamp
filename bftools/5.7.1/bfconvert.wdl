version 1.0

task Bfconvert {
  input {
    Boolean versionVersion
    Boolean noNoUpgrade
    Boolean debugDebug
    Boolean stitchStitch
    Boolean separateSeparate
    Boolean mergeMerge
    Boolean expandExpand
    Boolean bigBigTiff
    Boolean seriesSeries
    Boolean mapMap
    Boolean rangeRange
    Boolean nogroupNogroup
    Boolean noNoLookup
    Boolean autoscaleAutoscale
    Boolean overwriteOverwrite
    Boolean cropCrop
    Boolean channelChannel
    Boolean zZ
    Boolean timeTimePoint
    Boolean paddedPadded
    Boolean optionOption
  }
  command <<<
    bfconvert \
      ~{true="-version" false="" versionVersion} \
      ~{true="-no-upgrade" false="" noNoUpgrade} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-stitch" false="" stitchStitch} \
      ~{true="-separate" false="" separateSeparate} \
      ~{true="-merge" false="" mergeMerge} \
      ~{true="-expand" false="" expandExpand} \
      ~{true="-bigtiff" false="" bigBigTiff} \
      ~{true="-series" false="" seriesSeries} \
      ~{true="-map" false="" mapMap} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-nogroup" false="" nogroupNogroup} \
      ~{true="-nolookup" false="" noNoLookup} \
      ~{true="-autoscale" false="" autoscaleAutoscale} \
      ~{true="-overwrite" false="" overwriteOverwrite} \
      ~{true="-crop" false="" cropCrop} \
      ~{true="-channel" false="" channelChannel} \
      ~{true="-z" false="" zZ} \
      ~{true="-timepoint" false="" timeTimePoint} \
      ~{true="-padded" false="" paddedPadded} \
      ~{true="-option" false="" optionOption}
  >>>
}