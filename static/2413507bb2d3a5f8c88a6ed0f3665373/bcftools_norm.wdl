version 1.0

task BcftoolsNorm {
  input {
    Boolean checkCheckRef
    Boolean removeRemoveDuplicates
    String rmRmDup
    File fastFastARef
    Boolean forceForce
    Boolean multiMultiAllelicS
    Boolean noNoVersion
    Boolean doDoNotNormalize
    File outputOutput
    String outputOutputType
    String regionsRegions
    File regionsRegionsFile
    Boolean strictStrictFilter
    String targetsTargets
    File targetsTargetsFile
    Int threadsThreads
    Int siteSiteWin
    String? inInVcfGz
  }
  command <<<
    bcftools norm \
      ~{inInVcfGz} \
      ~{true="--check-ref" false="" checkCheckRef} \
      ~{true="--remove-duplicates" false="" removeRemoveDuplicates} \
      ~{if defined(rmRmDup) then ("--rm-dup " +  '"' + rmRmDup + '"') else ""} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--multiallelics" false="" multiMultiAllelicS} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{true="--do-not-normalize" false="" doDoNotNormalize} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output-type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{true="--strict-filter" false="" strictStrictFilter} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(siteSiteWin) then ("--site-win " +  '"' + siteSiteWin + '"') else ""}
  >>>
}