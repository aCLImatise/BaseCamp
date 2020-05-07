version 1.0

task ErneFilter {
  input {
    String contaminationContaminationReference
    String queryQuery1
    String queryQuery2
    String outputOutputPrefix
    Boolean fastFast
    Boolean sensitiveSensitive
    Boolean ultraUltraSensitive
    Boolean noNoIndels
    String indelsIndelsMax
    Boolean gzipGzip
    Boolean bzip2Bzip2
    String threadsThreads
    Boolean forceForceIllumina
    Boolean forceForceStandard
    Boolean autoAutoErrors
    String errorsErrorsRate
    String errorsErrors
    Boolean noNoAutoTrim
    String minMinPhredValueMott
    String minMinMeanPhredQuality
    String minMinSize
    Boolean preservePreserveEncoding
    String qQ
    Boolean disableDisableQualityStrategy
    Boolean ignoreIgnoreQuality
    String clCl
  }
  command <<<
    erne-filter \
      ~{if defined(contaminationContaminationReference) then ("--contamination-reference " +  '"' + contaminationContaminationReference + '"') else ""} \
      ~{if defined(queryQuery1) then ("--query1 " +  '"' + queryQuery1 + '"') else ""} \
      ~{if defined(queryQuery2) then ("--query2 " +  '"' + queryQuery2 + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--ultra-sensitive" false="" ultraUltraSensitive} \
      ~{true="--no-indels" false="" noNoIndels} \
      ~{if defined(indelsIndelsMax) then ("--indels-max " +  '"' + indelsIndelsMax + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--force-illumina" false="" forceForceIllumina} \
      ~{true="--force-standard" false="" forceForceStandard} \
      ~{true="--auto-errors" false="" autoAutoErrors} \
      ~{if defined(errorsErrorsRate) then ("--errors-rate " +  '"' + errorsErrorsRate + '"') else ""} \
      ~{if defined(errorsErrors) then ("--errors " +  '"' + errorsErrors + '"') else ""} \
      ~{true="--no-auto-trim" false="" noNoAutoTrim} \
      ~{if defined(minMinPhredValueMott) then ("--min-phred-value-mott " +  '"' + minMinPhredValueMott + '"') else ""} \
      ~{if defined(minMinMeanPhredQuality) then ("--min-mean-phred-quality " +  '"' + minMinMeanPhredQuality + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{true="--preserve-encoding" false="" preservePreserveEncoding} \
      ~{if defined(qQ) then ("--q " +  '"' + qQ + '"') else ""} \
      ~{true="--disable-quality-strategy" false="" disableDisableQualityStrategy} \
      ~{true="--ignore-quality" false="" ignoreIgnoreQuality} \
      ~{if defined(clCl) then ("--cl " +  '"' + clCl + '"') else ""}
  >>>
}