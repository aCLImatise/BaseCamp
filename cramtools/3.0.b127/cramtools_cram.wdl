version 1.0

task CramtoolsCram {
  input {
    Boolean captureCaptureAllTags
    Boolean captureCaptureTags
    Boolean encryptEncrypt
    Boolean ignoreIgnoreMd5Mismatch
    Boolean ignoreIgnoreTags
    Boolean injectInjectSqUri
    Boolean inputInputBamFile
    Boolean inputInputIsSam
    Boolean losslessLosslessQualityScore
    Boolean lossyLossyQualityScoreSpec
    Boolean maxMaxRecords
    Boolean outputOutputCramFile
    Boolean preservePreserveReadNames
    Boolean referenceReferenceFastAFile
    Boolean logLogLevel
  }
  command <<<
    cramtools cram \
      ~{true="--capture-all-tags" false="" captureCaptureAllTags} \
      ~{true="--capture-tags" false="" captureCaptureTags} \
      ~{true="--encrypt" false="" encryptEncrypt} \
      ~{true="--ignore-md5-mismatch" false="" ignoreIgnoreMd5Mismatch} \
      ~{true="--ignore-tags" false="" ignoreIgnoreTags} \
      ~{true="--inject-sq-uri" false="" injectInjectSqUri} \
      ~{true="--input-bam-file" false="" inputInputBamFile} \
      ~{true="--input-is-sam" false="" inputInputIsSam} \
      ~{true="--lossless-quality-score" false="" losslessLosslessQualityScore} \
      ~{true="--lossy-quality-score-spec" false="" lossyLossyQualityScoreSpec} \
      ~{true="--max-records" false="" maxMaxRecords} \
      ~{true="--output-cram-file" false="" outputOutputCramFile} \
      ~{true="--preserve-read-names" false="" preservePreserveReadNames} \
      ~{true="--reference-fasta-file" false="" referenceReferenceFastAFile} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}