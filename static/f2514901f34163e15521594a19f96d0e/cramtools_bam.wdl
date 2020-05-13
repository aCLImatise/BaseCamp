version 1.0

task CramtoolsBam {
  input {
    Boolean calculateCalculateMdTag
    Boolean calculateCalculateNmTag
    Boolean countCountOnly
    Boolean decryptDecrypt
    Boolean defaultDefaultQualityScore
    Boolean filterFilterFlags
    Boolean ignoreIgnoreMd5Mismatch
    Boolean injectInjectSqUri
    Boolean inputInputCramFile
    Boolean outputOutputBamFile
    Boolean passwordPassword
    Boolean printPrintSamHeader
    Boolean referenceReferenceFastAFile
    Boolean requiredRequiredFlags
    Boolean skipSkipMd5Check
    Boolean syncSyncBamOutput
    Boolean outputOutputBamFormat
    Boolean hH
    Boolean logLogLevel
  }
  command <<<
    cramtools bam \
      ~{true="--calculate-md-tag" false="" calculateCalculateMdTag} \
      ~{true="--calculate-nm-tag" false="" calculateCalculateNmTag} \
      ~{true="--count-only" false="" countCountOnly} \
      ~{true="--decrypt" false="" decryptDecrypt} \
      ~{true="--default-quality-score" false="" defaultDefaultQualityScore} \
      ~{true="--filter-flags" false="" filterFilterFlags} \
      ~{true="--ignore-md5-mismatch" false="" ignoreIgnoreMd5Mismatch} \
      ~{true="--inject-sq-uri" false="" injectInjectSqUri} \
      ~{true="--input-cram-file" false="" inputInputCramFile} \
      ~{true="--output-bam-file" false="" outputOutputBamFile} \
      ~{true="--password" false="" passwordPassword} \
      ~{true="--print-sam-header" false="" printPrintSamHeader} \
      ~{true="--reference-fasta-file" false="" referenceReferenceFastAFile} \
      ~{true="--required-flags" false="" requiredRequiredFlags} \
      ~{true="--skip-md5-check" false="" skipSkipMd5Check} \
      ~{true="--sync-bam-output" false="" syncSyncBamOutput} \
      ~{true="--output-bam-format" false="" outputOutputBamFormat} \
      ~{true="-H" false="" hH} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}