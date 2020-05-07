version 1.0

task PhyluceProbeRemoveDuplicateHitsFromProbesUsingLastz {
  input {
    String fastFastA
    String lastLastZ
    String probeProbePrefix
    String probeProbeRegex
    String probeProbeBed
    String locusLocusBed
    Boolean longLong
  }
  command <<<
    phyluce_probe_remove_duplicate_hits_from_probes_using_lastz \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(lastLastZ) then ("--lastz " +  '"' + lastLastZ + '"') else ""} \
      ~{if defined(probeProbePrefix) then ("--probe-prefix " +  '"' + probeProbePrefix + '"') else ""} \
      ~{if defined(probeProbeRegex) then ("--probe-regex " +  '"' + probeProbeRegex + '"') else ""} \
      ~{if defined(probeProbeBed) then ("--probe-bed " +  '"' + probeProbeBed + '"') else ""} \
      ~{if defined(locusLocusBed) then ("--locus-bed " +  '"' + locusLocusBed + '"') else ""} \
      ~{true="--long" false="" longLong}
  >>>
}