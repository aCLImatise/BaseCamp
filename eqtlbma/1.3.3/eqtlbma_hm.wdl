version 1.0

task EqtlbmaHm {
  input {
    String verboseVerbose
    Boolean dataData
    String nNSubGrp
    Boolean modelModel
    Boolean dimDim
    Boolean nNGrid
    Boolean outOut
    Boolean inInIt
    Boolean randRand
    Boolean seedSeed
    Boolean threshThresh
    Boolean maxMaxIt
    Boolean mslMsl
    Boolean threadThread
    String configsConfigs
    String keepKeepGen
    Boolean getGetCi
    Boolean getGetBf
    Boolean pi0Pi0
    Boolean ciCi
  }
  command <<<
    eqtlbma_hm \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--data" false="" dataData} \
      ~{if defined(nNSubGrp) then ("--nsubgrp " +  '"' + nNSubGrp + '"') else ""} \
      ~{true="--model" false="" modelModel} \
      ~{true="--dim" false="" dimDim} \
      ~{true="--ngrid" false="" nNGrid} \
      ~{true="--out" false="" outOut} \
      ~{true="--init" false="" inInIt} \
      ~{true="--rand" false="" randRand} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--thresh" false="" threshThresh} \
      ~{true="--maxit" false="" maxMaxIt} \
      ~{true="--msl" false="" mslMsl} \
      ~{true="--thread" false="" threadThread} \
      ~{if defined(configsConfigs) then ("--configs " +  '"' + configsConfigs + '"') else ""} \
      ~{if defined(keepKeepGen) then ("--keepgen " +  '"' + keepKeepGen + '"') else ""} \
      ~{true="--getci" false="" getGetCi} \
      ~{true="--getbf" false="" getGetBf} \
      ~{true="--pi0" false="" pi0Pi0} \
      ~{true="--ci" false="" ciCi}
  >>>
}