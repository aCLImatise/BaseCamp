version 1.0

task Htsget {
  input {
    Boolean verboseVerbose
    String formatFormat
    String referenceReferenceName
    String referenceReferenceMd5
    String startStart
    String endEnd
    String outputOutput
    Int maxMaxRetries
    String retryRetryWait
    String timeoutTimeout
    String bearerBearerToken
    String? urlUrl
  }
  command <<<
    htsget \
      ~{urlUrl} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(referenceReferenceName) then ("--reference-name " +  '"' + referenceReferenceName + '"') else ""} \
      ~{if defined(referenceReferenceMd5) then ("--reference-md5 " +  '"' + referenceReferenceMd5 + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(maxMaxRetries) then ("--max-retries " +  '"' + maxMaxRetries + '"') else ""} \
      ~{if defined(retryRetryWait) then ("--retry-wait " +  '"' + retryRetryWait + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(bearerBearerToken) then ("--bearer-token " +  '"' + bearerBearerToken + '"') else ""}
  >>>
}