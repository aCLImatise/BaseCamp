version 1.0

task OptimizeAugustus.pl {
  input {
    String metaMetaPars
    String roundsRounds
    String cpusCpus
    String onlyOnlyTrain
    String kKFold
    String pPStep
    String augustusAugustusConfigPath
    String optOptTransMatrix
    String matrixMatrixConstraints
    String utrUtr
    String augAugExecDir
    Boolean trainTrainOnlyUtr
    Boolean notNotRainPars
    String sensSensSpecBias
    Boolean niceNice
    Boolean cleanupCleanup
    Boolean stopStopCodonExcludedFromCds
    String evalEvalExecDir
    String evalEvalAgainst
    String chunksizeChunksize
    String dbaccessDbaccess
    Boolean jgJg
    String jgJgExecDir
    String metaMetaPars
    String cpusCpus
    String pPStep
    String augustusAugustusConfigPath
    String augAugExecDir
    String sensSensSpecBias
  }
  command <<<
    optimize_augustus.pl \
      ~{if defined(metaMetaPars) then ("--metapars " +  '"' + metaMetaPars + '"') else ""} \
      ~{if defined(roundsRounds) then ("--rounds " +  '"' + roundsRounds + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(onlyOnlyTrain) then ("--onlytrain " +  '"' + onlyOnlyTrain + '"') else ""} \
      ~{if defined(kKFold) then ("--kfold " +  '"' + kKFold + '"') else ""} \
      ~{if defined(pPStep) then ("--pstep " +  '"' + pPStep + '"') else ""} \
      ~{if defined(augustusAugustusConfigPath) then ("--AUGUSTUS_CONFIG_PATH " +  '"' + augustusAugustusConfigPath + '"') else ""} \
      ~{if defined(optOptTransMatrix) then ("--opt_trans_matrix " +  '"' + optOptTransMatrix + '"') else ""} \
      ~{if defined(matrixMatrixConstraints) then ("--matrix_constraints " +  '"' + matrixMatrixConstraints + '"') else ""} \
      ~{if defined(utrUtr) then ("--UTR " +  '"' + utrUtr + '"') else ""} \
      ~{if defined(augAugExecDir) then ("--aug_exec_dir " +  '"' + augAugExecDir + '"') else ""} \
      ~{true="--trainOnlyUtr" false="" trainTrainOnlyUtr} \
      ~{true="--noTrainPars" false="" notNotRainPars} \
      ~{if defined(sensSensSpecBias) then ("--sens_spec_bias " +  '"' + sensSensSpecBias + '"') else ""} \
      ~{true="--nice" false="" niceNice} \
      ~{true="--cleanup" false="" cleanupCleanup} \
      ~{true="--stopCodonExcludedFromCDS" false="" stopStopCodonExcludedFromCds} \
      ~{if defined(evalEvalExecDir) then ("--eval_exec_dir " +  '"' + evalEvalExecDir + '"') else ""} \
      ~{if defined(evalEvalAgainst) then ("--eval_against " +  '"' + evalEvalAgainst + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(dbaccessDbaccess) then ("--dbaccess " +  '"' + dbaccessDbaccess + '"') else ""} \
      ~{true="--jg" false="" jgJg} \
      ~{if defined(jgJgExecDir) then ("--jg_exec_dir " +  '"' + jgJgExecDir + '"') else ""} \
      ~{if defined(metaMetaPars) then ("--metapars " +  '"' + metaMetaPars + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(pPStep) then ("--pstep " +  '"' + pPStep + '"') else ""} \
      ~{if defined(augustusAugustusConfigPath) then ("--AUGUSTUS_CONFIG_PATH " +  '"' + augustusAugustusConfigPath + '"') else ""} \
      ~{if defined(augAugExecDir) then ("--aug_exec_dir " +  '"' + augAugExecDir + '"') else ""} \
      ~{if defined(sensSensSpecBias) then ("--sens_spec_bias " +  '"' + sensSensSpecBias + '"') else ""}
  >>>
}