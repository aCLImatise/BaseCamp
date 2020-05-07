version 1.0

task BcftoolsMpileup {
  input {
    Boolean countCountOrphans
    File bamBamList
    Boolean noNoBaq
    Int adjustAdjustMq
    Int maxMaxDepth
    Boolean redoRedoBaq
    File fastFastARef
    Boolean noNoReference
    File readReadGroups
    Int minMinMq
    Int minMinBq
    String regionsRegions
    File regionsRegionsFile
    Boolean ignoreIgnoreRg
    String inclInclFlags
    String exclExclFlags
    String samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Boolean ignoreIgnoreOverlaps
    String annotateAnnotate
    Int gvcGvcF
    Boolean noNoVersion
    File outputOutput
    String outputOutputType
    Int threadsThreads
    Int extExtProb
    Float gapGapFrac
    Int tandemTandemQual
    Boolean skipSkipIndels
    Int maxMaxIDepth
    Int minMinIReads
    Int openOpenProb
    Boolean perPerSampleMf
    String platformsPlatforms
  }
  command <<<
    bcftools mpileup \
      ~{true="--count-orphans" false="" countCountOrphans} \
      ~{if defined(bamBamList) then ("--bam-list " +  '"' + bamBamList + '"') else ""} \
      ~{true="--no-BAQ" false="" noNoBaq} \
      ~{if defined(adjustAdjustMq) then ("--adjust-MQ " +  '"' + adjustAdjustMq + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{true="--redo-BAQ" false="" redoRedoBaq} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{true="--no-reference" false="" noNoReference} \
      ~{if defined(readReadGroups) then ("--read-groups " +  '"' + readReadGroups + '"') else ""} \
      ~{if defined(minMinMq) then ("--min-MQ " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(minMinBq) then ("--min-BQ " +  '"' + minMinBq + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{true="--ignore-RG" false="" ignoreIgnoreRg} \
      ~{if defined(inclInclFlags) then ("--incl-flags " +  '"' + inclInclFlags + '"') else ""} \
      ~{if defined(exclExclFlags) then ("--excl-flags " +  '"' + exclExclFlags + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{true="--ignore-overlaps" false="" ignoreIgnoreOverlaps} \
      ~{if defined(annotateAnnotate) then ("--annotate " +  '"' + annotateAnnotate + '"') else ""} \
      ~{if defined(gvcGvcF) then ("--gvcf " +  '"' + gvcGvcF + '"') else ""} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output-type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(extExtProb) then ("--ext-prob " +  '"' + extExtProb + '"') else ""} \
      ~{if defined(gapGapFrac) then ("--gap-frac " +  '"' + gapGapFrac + '"') else ""} \
      ~{if defined(tandemTandemQual) then ("--tandem-qual " +  '"' + tandemTandemQual + '"') else ""} \
      ~{true="--skip-indels" false="" skipSkipIndels} \
      ~{if defined(maxMaxIDepth) then ("--max-idepth " +  '"' + maxMaxIDepth + '"') else ""} \
      ~{if defined(minMinIReads) then ("--min-ireads " +  '"' + minMinIReads + '"') else ""} \
      ~{if defined(openOpenProb) then ("--open-prob " +  '"' + openOpenProb + '"') else ""} \
      ~{true="--per-sample-mF" false="" perPerSampleMf} \
      ~{if defined(platformsPlatforms) then ("--platforms " +  '"' + platformsPlatforms + '"') else ""}
  >>>
}