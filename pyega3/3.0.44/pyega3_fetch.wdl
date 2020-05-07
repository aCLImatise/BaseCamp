version 1.0

task Pyega3Fetch {
  input {
    String referenceReferenceName
    String referenceReferenceMd5
    String startStart
    String endEnd
    String formatFormat
    Int maxMaxRetries
    String retryRetryWait
    Boolean saveSaveTo
    String? identifierIdentifier
  }
  command <<<
    pyega3 fetch \
      ~{identifierIdentifier} \
      ~{if defined(referenceReferenceName) then ("--reference-name " +  '"' + referenceReferenceName + '"') else ""} \
      ~{if defined(referenceReferenceMd5) then ("--reference-md5 " +  '"' + referenceReferenceMd5 + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(maxMaxRetries) then ("--max-retries " +  '"' + maxMaxRetries + '"') else ""} \
      ~{if defined(retryRetryWait) then ("--retry-wait " +  '"' + retryRetryWait + '"') else ""} \
      ~{true="--saveto" false="" saveSaveTo}
  >>>
}