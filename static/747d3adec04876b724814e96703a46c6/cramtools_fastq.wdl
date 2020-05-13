version 1.0

task CramtoolsFastq {
  input {
    Boolean defaultDefaultQualityScore
    Boolean enumerateEnumerate
    Boolean fastFastQBaseName
    Boolean gzipGzip
    Boolean ignoreIgnoreMd5Mismatch
    Boolean inputInputCramFile
    Boolean maxMaxRecords
    Boolean readReadNamePrefix
    Boolean referenceReferenceFastAFile
    Boolean reverseReverse
    Boolean skipSkipMd5Check
    Boolean logLogLevel
  }
  command <<<
    cramtools fastq \
      ~{true="--default-quality-score" false="" defaultDefaultQualityScore} \
      ~{true="--enumerate" false="" enumerateEnumerate} \
      ~{true="--fastq-base-name" false="" fastFastQBaseName} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--ignore-md5-mismatch" false="" ignoreIgnoreMd5Mismatch} \
      ~{true="--input-cram-file" false="" inputInputCramFile} \
      ~{true="--max-records" false="" maxMaxRecords} \
      ~{true="--read-name-prefix" false="" readReadNamePrefix} \
      ~{true="--reference-fasta-file" false="" referenceReferenceFastAFile} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--skip-md5-check" false="" skipSkipMd5Check} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}