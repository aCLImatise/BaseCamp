version 1.0

task SvabaRefilter {
  input {
    Boolean lodLod
    Boolean lodLodDbsnp
    Boolean lodLodSomatic
    Boolean lodLodSomaticDbsnp
    Boolean scaleScaleErrors
    Boolean readReadTracking
  }
  command <<<
    svaba refilter \
      ~{true="--lod" false="" lodLod} \
      ~{true="--lod-dbsnp" false="" lodLodDbsnp} \
      ~{true="--lod-somatic" false="" lodLodSomatic} \
      ~{true="--lod-somatic-dbsnp" false="" lodLodSomaticDbsnp} \
      ~{true="--scale-errors" false="" scaleScaleErrors} \
      ~{true="--read-tracking" false="" readReadTracking}
  >>>
}