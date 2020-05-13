version 1.0

task GenesToBed {
  input {
    String sourceSource
    String modeMode
    File inIn
    File outOut
    Boolean fallFallBack
    Boolean anAnNo
    Boolean testTest
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    GenesToBed \
      ~{if defined(sourceSource) then ("-source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(modeMode) then ("-mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-fallback" false="" fallFallBack} \
      ~{true="-anno" false="" anAnNo} \
      ~{true="-test" false="" testTest} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}