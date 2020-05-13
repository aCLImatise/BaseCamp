version 1.0

task Illumiprocessor {
  input {
    String inputInput
    String outputOutput
    String configConfig
    String trimTrimMoMatic
    Int minMinLen
    Boolean noNoMerge
    String coresCores
    String r1R1Pattern
    String r2R2Pattern
    Boolean seSe
    String phredPhred
    String logLogPath
    String verbosityVerbosity
  }
  command <<<
    illumiprocessor \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(trimTrimMoMatic) then ("--trimmomatic " +  '"' + trimTrimMoMatic + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{true="--no-merge" false="" noNoMerge} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(r1R1Pattern) then ("--r1-pattern " +  '"' + r1R1Pattern + '"') else ""} \
      ~{if defined(r2R2Pattern) then ("--r2-pattern " +  '"' + r2R2Pattern + '"') else ""} \
      ~{true="--se" false="" seSe} \
      ~{if defined(phredPhred) then ("--phred " +  '"' + phredPhred + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}