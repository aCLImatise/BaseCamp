version 1.0

task PhyluceProbeSliceSequenceFromGenomes {
  input {
    String confConf
    String lastLastZ
    String outputOutput
    String nameNamePattern
    String probeProbePrefix
    String probeProbeRegex
    Array[String]+ excludeExclude
    String verbosityVerbosity
    Boolean contigContigOrient
    String flankFlank
    String probesProbes
  }
  command <<<
    phyluce_probe_slice_sequence_from_genomes \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(lastLastZ) then ("--lastz " +  '"' + lastLastZ + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nameNamePattern) then ("--name-pattern " +  '"' + nameNamePattern + '"') else ""} \
      ~{if defined(probeProbePrefix) then ("--probe-prefix " +  '"' + probeProbePrefix + '"') else ""} \
      ~{if defined(probeProbeRegex) then ("--probe-regex " +  '"' + probeProbeRegex + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--contig_orient" false="" contigContigOrient} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{if defined(probesProbes) then ("--probes " +  '"' + probesProbes + '"') else ""}
  >>>
}