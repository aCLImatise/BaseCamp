version 1.0

task TeloclipExtract {
  input {
    String refRefIdx
    String prefixPrefix
    Boolean extractExtractReads
    String extractExtractDir
    Int minMinClip
    Int maxMaxBreak
  }
  command <<<
    teloclip-extract \
      ~{if defined(refRefIdx) then ("--refIdx " +  '"' + refRefIdx + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--extractReads" false="" extractExtractReads} \
      ~{if defined(extractExtractDir) then ("--extractDir " +  '"' + extractExtractDir + '"') else ""} \
      ~{if defined(minMinClip) then ("--minClip " +  '"' + minMinClip + '"') else ""} \
      ~{if defined(maxMaxBreak) then ("--maxBreak " +  '"' + maxMaxBreak + '"') else ""}
  >>>
}