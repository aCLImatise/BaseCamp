version 1.0

task BcftoolsView {
  input {
    Boolean gG
    Boolean lL
    Boolean oO
    Boolean oO
    String regionsRegions
    File regionsRegionsFile
    Boolean targetsTargets
    Boolean targetsTargetsFile
    Int threadsThreads
    Boolean trimTrimAltAlleles
    Boolean noNoUpdate
    Boolean samplesSamples
    Boolean samplesSamplesFile
    Boolean forceForceSamples
    Boolean cC
    Boolean fF
    Boolean gG
    Boolean iI
    Boolean kK
    Boolean mM
    Boolean pP
    Boolean qQ
    Boolean uU
    Boolean vV
    Boolean xX
  }
  command <<<
    bcftools view \
      ~{true="-G" false="" gG} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{true="--targets" false="" targetsTargets} \
      ~{true="--targets-file" false="" targetsTargetsFile} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--trim-alt-alleles" false="" trimTrimAltAlleles} \
      ~{true="--no-update" false="" noNoUpdate} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--samples-file" false="" samplesSamplesFile} \
      ~{true="--force-samples" false="" forceForceSamples} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-k" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{true="-x" false="" xX}
  >>>
}