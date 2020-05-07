version 1.0

task Showinf {
  input {
    Boolean noNoPix
    Boolean noNoCore
    Boolean noNoMeta
    Boolean noNoFilter
    Boolean thumbsThumbs
    Boolean minmaxMinmax
    Boolean mergeMerge
    Boolean nogroupNogroup
    Boolean stitchStitch
    Boolean separateSeparate
    Boolean expandExpand
    Boolean omeOmeXml
    Boolean normalizeNormalize
    Boolean fastFast
    Boolean debugDebug
    Boolean rangeRange
    Boolean seriesSeries
    Boolean noNoFlat
    Boolean resolutionResolution
    Boolean swapSwap
    Boolean shuffleShuffle
    Boolean mapMap
    Boolean preloadPreload
    Boolean cropCrop
    Boolean autoscaleAutoscale
    Boolean noNoValid
    Boolean noNoSas
    Boolean noNoUpgrade
    Boolean formatFormat
    Boolean cacheCache
    Boolean cacheCacheDir
    Boolean optionOption
  }
  command <<<
    showinf \
      ~{true="-nopix" false="" noNoPix} \
      ~{true="-nocore" false="" noNoCore} \
      ~{true="-nometa" false="" noNoMeta} \
      ~{true="-nofilter" false="" noNoFilter} \
      ~{true="-thumbs" false="" thumbsThumbs} \
      ~{true="-minmax" false="" minmaxMinmax} \
      ~{true="-merge" false="" mergeMerge} \
      ~{true="-nogroup" false="" nogroupNogroup} \
      ~{true="-stitch" false="" stitchStitch} \
      ~{true="-separate" false="" separateSeparate} \
      ~{true="-expand" false="" expandExpand} \
      ~{true="-omexml" false="" omeOmeXml} \
      ~{true="-normalize" false="" normalizeNormalize} \
      ~{true="-fast" false="" fastFast} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-series" false="" seriesSeries} \
      ~{true="-noflat" false="" noNoFlat} \
      ~{true="-resolution" false="" resolutionResolution} \
      ~{true="-swap" false="" swapSwap} \
      ~{true="-shuffle" false="" shuffleShuffle} \
      ~{true="-map" false="" mapMap} \
      ~{true="-preload" false="" preloadPreload} \
      ~{true="-crop" false="" cropCrop} \
      ~{true="-autoscale" false="" autoscaleAutoscale} \
      ~{true="-novalid" false="" noNoValid} \
      ~{true="-no-sas" false="" noNoSas} \
      ~{true="-no-upgrade" false="" noNoUpgrade} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-cache" false="" cacheCache} \
      ~{true="-cache-dir" false="" cacheCacheDir} \
      ~{true="-option" false="" optionOption}
  >>>
}