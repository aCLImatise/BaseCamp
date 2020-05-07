version 1.0

task ArbSed {
  input {
    Boolean silentSilent
    Boolean debugDebug
    String expressionExpression
    String fileFile
    Boolean followFollowSymlinks
    Boolean iI
    String lineLineLength
    Boolean posixPosix
    Boolean regexpRegexpExtended
    Boolean separateSeparate
    Boolean sandboxSandbox
    Boolean unbufferedUnbuffered
    Boolean nullNullData
  }
  command <<<
    arb_sed \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(expressionExpression) then ("--expression " +  '"' + expressionExpression + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--follow-symlinks" false="" followFollowSymlinks} \
      ~{true="-i" false="" iI} \
      ~{if defined(lineLineLength) then ("--line-length " +  '"' + lineLineLength + '"') else ""} \
      ~{true="--posix" false="" posixPosix} \
      ~{true="--regexp-extended" false="" regexpRegexpExtended} \
      ~{true="--separate" false="" separateSeparate} \
      ~{true="--sandbox" false="" sandboxSandbox} \
      ~{true="--unbuffered" false="" unbufferedUnbuffered} \
      ~{true="--null-data" false="" nullNullData}
  >>>
}