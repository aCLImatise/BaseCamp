version 1.0

task PhyluceSnpPhaseUces {
  input {
    String configConfig
    String bamsBams
    String outputOutput
    Boolean conservativeConservative
    String coresCores
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_snp_phase_uces \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(bamsBams) then ("--bams " +  '"' + bamsBams + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--conservative" false="" conservativeConservative} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}