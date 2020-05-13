version 1.0

task SnippyCore {
  input {
    Boolean debugDebug
    Boolean checkCheck
    String refRef
    String prefixPrefix
    String maxMaxHap
    String maskMask
    String gapGapChar
    String maskMaskChar
    String inInPrefix
  }
  command <<<
    snippy-core \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(maxMaxHap) then ("--maxhap " +  '"' + maxMaxHap + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(gapGapChar) then ("--gap-char " +  '"' + gapGapChar + '"') else ""} \
      ~{if defined(maskMaskChar) then ("--mask-char " +  '"' + maskMaskChar + '"') else ""} \
      ~{if defined(inInPrefix) then ("--inprefix " +  '"' + inInPrefix + '"') else ""}
  >>>
}