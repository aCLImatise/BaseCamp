version 1.0

task GdtoolsRUNFILE {
  input {
    String modeMode
    String executableExecutable
    String optionsOptions
    String runRunFile
    String dataDataDir
    String downloadsDownloadsDir
    String outputOutputDir
    String logLogDir
    Boolean preservePreservePairs
  }
  command <<<
    gdtools RUNFILE \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(executableExecutable) then ("--executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(optionsOptions) then ("--options " +  '"' + optionsOptions + '"') else ""} \
      ~{if defined(runRunFile) then ("--runfile " +  '"' + runRunFile + '"') else ""} \
      ~{if defined(dataDataDir) then ("--data-dir " +  '"' + dataDataDir + '"') else ""} \
      ~{if defined(downloadsDownloadsDir) then ("--downloads-dir " +  '"' + downloadsDownloadsDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(logLogDir) then ("--log-dir " +  '"' + logLogDir + '"') else ""} \
      ~{true="--preserve-pairs" false="" preservePreservePairs}
  >>>
}