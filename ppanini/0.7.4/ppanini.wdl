version 1.0

task Ppanini {
  input {
    String inputInputTable
    String outputOutputFolder
    String basenameBasename
    String uniref2goUniref2go
    String logLogLevel
    String abundanceAbundanceDetectionLevel
    String tTShldAbund
    String tTShldPrev
    String betaBeta
  }
  command <<<
    ppanini \
      ~{if defined(inputInputTable) then ("--input_table " +  '"' + inputInputTable + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--output-folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(basenameBasename) then ("--basename " +  '"' + basenameBasename + '"') else ""} \
      ~{if defined(uniref2goUniref2go) then ("--uniref2go " +  '"' + uniref2goUniref2go + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(abundanceAbundanceDetectionLevel) then ("--abundance-detection-level " +  '"' + abundanceAbundanceDetectionLevel + '"') else ""} \
      ~{if defined(tTShldAbund) then ("--tshld-abund " +  '"' + tTShldAbund + '"') else ""} \
      ~{if defined(tTShldPrev) then ("--tshld-prev " +  '"' + tTShldPrev + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""}
  >>>
}