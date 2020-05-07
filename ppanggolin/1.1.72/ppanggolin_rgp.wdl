version 1.0

task PpanggolinRgp {
  input {
    String persistentPersistentPenalty
    String variableVariableGain
    Int minMinScore
    Int minMinLength
    String dupDupMargin
    String panPanGenome
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin rgp \
      ~{if defined(persistentPersistentPenalty) then ("--persistent_penalty " +  '"' + persistentPersistentPenalty + '"') else ""} \
      ~{if defined(variableVariableGain) then ("--variable_gain " +  '"' + variableVariableGain + '"') else ""} \
      ~{if defined(minMinScore) then ("--min_score " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(dupDupMargin) then ("--dup_margin " +  '"' + dupDupMargin + '"') else ""} \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}