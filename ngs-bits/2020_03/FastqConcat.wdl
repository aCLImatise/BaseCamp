version 1.0

task FastqConcat {
  input {
    File inIn
    File outOut
    Int compressionCompressionLevel
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqConcat \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(compressionCompressionLevel) then ("-compression_level " +  '"' + compressionCompressionLevel + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}