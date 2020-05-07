version 1.0

task VcfFilter.py {
  input {
    Boolean noNoShortCircuit
    String outputOutput
    Boolean noNoFiltered
    String localLocalScript
    String avgAvgDepthPerSample
    String depthDepthPerSample
    String eEBlr
    String siteSiteQuality
    String genotypeGenotypeQuality
    String? inputInput
  }
  command <<<
    vcf_filter.py \
      ~{inputInput} \
      ~{true="--no-short-circuit" false="" noNoShortCircuit} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-filtered" false="" noNoFiltered} \
      ~{if defined(localLocalScript) then ("--local-script " +  '"' + localLocalScript + '"') else ""} \
      ~{if defined(avgAvgDepthPerSample) then ("--avg-depth-per-sample " +  '"' + avgAvgDepthPerSample + '"') else ""} \
      ~{if defined(depthDepthPerSample) then ("--depth-per-sample " +  '"' + depthDepthPerSample + '"') else ""} \
      ~{if defined(eEBlr) then ("--eblr " +  '"' + eEBlr + '"') else ""} \
      ~{if defined(siteSiteQuality) then ("--site-quality " +  '"' + siteSiteQuality + '"') else ""} \
      ~{if defined(genotypeGenotypeQuality) then ("--genotype-quality " +  '"' + genotypeGenotypeQuality + '"') else ""}
  >>>
}