version 1.0

task ErneBs5 {
  input {
    String referenceReference
    String queryQuery1
    String queryQuery2
    String outputOutput
    Boolean fastFast
    Boolean sensitiveSensitive
    Boolean ultraUltraSensitive
    String threadsThreads
    Boolean samSam
    Boolean forceForceIllumina
    Boolean forceForceStandard
    Boolean autoAutoErrors
    String errorsErrorsRate
    String errorsErrors
    String deltaDelta
    Boolean noNoIndels
    String indelsIndelsMax
    String fragmentFragmentSizeMin
    String fragmentFragmentSizeMax
    String sampleSample
    Boolean noNoAutoTrim
    String minMinPhredValueMott
    String minMinMeanPhredQuality
    String minMinSize
    Boolean gapGap
    String refRefInsertionMaxGap
    String refRefDeletionMaxGap
    Boolean printPrintAll
    String seedSeedErrors
    String qQ
    Boolean disableDisableQualityStrategy
    Boolean ignoreIgnoreQuality
    String clCl
  }
  command <<<
    erne-bs5 \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(queryQuery1) then ("--query1 " +  '"' + queryQuery1 + '"') else ""} \
      ~{if defined(queryQuery2) then ("--query2 " +  '"' + queryQuery2 + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--ultra-sensitive" false="" ultraUltraSensitive} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--sam" false="" samSam} \
      ~{true="--force-illumina" false="" forceForceIllumina} \
      ~{true="--force-standard" false="" forceForceStandard} \
      ~{true="--auto-errors" false="" autoAutoErrors} \
      ~{if defined(errorsErrorsRate) then ("--errors-rate " +  '"' + errorsErrorsRate + '"') else ""} \
      ~{if defined(errorsErrors) then ("--errors " +  '"' + errorsErrors + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""} \
      ~{true="--no-indels" false="" noNoIndels} \
      ~{if defined(indelsIndelsMax) then ("--indels-max " +  '"' + indelsIndelsMax + '"') else ""} \
      ~{if defined(fragmentFragmentSizeMin) then ("--fragment-size-min " +  '"' + fragmentFragmentSizeMin + '"') else ""} \
      ~{if defined(fragmentFragmentSizeMax) then ("--fragment-size-max " +  '"' + fragmentFragmentSizeMax + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--no-auto-trim" false="" noNoAutoTrim} \
      ~{if defined(minMinPhredValueMott) then ("--min-phred-value-mott " +  '"' + minMinPhredValueMott + '"') else ""} \
      ~{if defined(minMinMeanPhredQuality) then ("--min-mean-phred-quality " +  '"' + minMinMeanPhredQuality + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{true="--gap" false="" gapGap} \
      ~{if defined(refRefInsertionMaxGap) then ("--ref-insertion-max-gap " +  '"' + refRefInsertionMaxGap + '"') else ""} \
      ~{if defined(refRefDeletionMaxGap) then ("--ref-deletion-max-gap " +  '"' + refRefDeletionMaxGap + '"') else ""} \
      ~{true="--print-all" false="" printPrintAll} \
      ~{if defined(seedSeedErrors) then ("--seed-errors " +  '"' + seedSeedErrors + '"') else ""} \
      ~{if defined(qQ) then ("--q " +  '"' + qQ + '"') else ""} \
      ~{true="--disable-quality-strategy" false="" disableDisableQualityStrategy} \
      ~{true="--ignore-quality" false="" ignoreIgnoreQuality} \
      ~{if defined(clCl) then ("--cl " +  '"' + clCl + '"') else ""}
  >>>
}