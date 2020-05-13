version 1.0

task ErneMeth {
  input {
    String fastFastA
    String inputInput
    String outputOutputPrefix
    Boolean annotationsAnnotationsErne
    Boolean annotationsAnnotationsBismark
    Boolean annotationsAnnotationsEpp
    String compressCompress
    Boolean writeWriteBam
    String targetTarget
    String extendExtendTarget
    Boolean onOnTargetAnnotations
    Boolean printPrintOnlyCovered
    Boolean singleSingleMode
    Boolean multipleMultipleMode
    Boolean disambiguationDisambiguationMode
    String useUseFirst
    Boolean deDeDuplicate
    String allowedAllowedDuplicates
    Boolean disableDisableUnProperPair
    String maxMaxCoverage
    String coverageCoverageThreshold
    String errorErrorThreshold
    String deltaDeltaM
    String minMinCCov
    String maxMaxCCov
    String alignedAlignedReadsThr
    String contaminationContaminationReference
  }
  command <<<
    erne-meth \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--annotations-erne" false="" annotationsAnnotationsErne} \
      ~{true="--annotations-bismark" false="" annotationsAnnotationsBismark} \
      ~{true="--annotations-epp" false="" annotationsAnnotationsEpp} \
      ~{if defined(compressCompress) then ("--compress " +  '"' + compressCompress + '"') else ""} \
      ~{true="--write-bam" false="" writeWriteBam} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(extendExtendTarget) then ("--extend-target " +  '"' + extendExtendTarget + '"') else ""} \
      ~{true="--on-target-annotations" false="" onOnTargetAnnotations} \
      ~{true="--print-only-covered" false="" printPrintOnlyCovered} \
      ~{true="--single-mode" false="" singleSingleMode} \
      ~{true="--multiple-mode" false="" multipleMultipleMode} \
      ~{true="--disambiguation-mode" false="" disambiguationDisambiguationMode} \
      ~{if defined(useUseFirst) then ("--use-first " +  '"' + useUseFirst + '"') else ""} \
      ~{true="--deduplicate" false="" deDeDuplicate} \
      ~{if defined(allowedAllowedDuplicates) then ("--allowed-duplicates " +  '"' + allowedAllowedDuplicates + '"') else ""} \
      ~{true="--disable-unproper-pair" false="" disableDisableUnProperPair} \
      ~{if defined(maxMaxCoverage) then ("--max-coverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{if defined(coverageCoverageThreshold) then ("--coverage-threshold " +  '"' + coverageCoverageThreshold + '"') else ""} \
      ~{if defined(errorErrorThreshold) then ("--error-threshold " +  '"' + errorErrorThreshold + '"') else ""} \
      ~{if defined(deltaDeltaM) then ("--delta-m " +  '"' + deltaDeltaM + '"') else ""} \
      ~{if defined(minMinCCov) then ("--min-C-cov " +  '"' + minMinCCov + '"') else ""} \
      ~{if defined(maxMaxCCov) then ("--max-C-cov " +  '"' + maxMaxCCov + '"') else ""} \
      ~{if defined(alignedAlignedReadsThr) then ("--aligned-reads-thr " +  '"' + alignedAlignedReadsThr + '"') else ""} \
      ~{if defined(contaminationContaminationReference) then ("--contamination-reference " +  '"' + contaminationContaminationReference + '"') else ""}
  >>>
}