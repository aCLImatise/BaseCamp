version 1.0

task Cmcalibrate {
  input {
    String lL
    Boolean forecastForecast
    String nNForecast
    Boolean memMemReq
    Boolean noNoForecast
    String gGTailN
    String lLTailN
    String tailTailP
    String hHFile
    String sSFile
    String qqQqFile
    String fFFile
    String xXFile
    String seedSeed
    String betaBeta
    Boolean nonNonBanded
    Boolean nonull3Nonull3
    Boolean randomRandom
    String gcGc
    String cpuCpu
    String? cmCmFile
  }
  command <<<
    cmcalibrate \
      ~{cmCmFile} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="--forecast" false="" forecastForecast} \
      ~{if defined(nNForecast) then ("--nforecast " +  '"' + nNForecast + '"') else ""} \
      ~{true="--memreq" false="" memMemReq} \
      ~{true="--noforecast" false="" noNoForecast} \
      ~{if defined(gGTailN) then ("--gtailn " +  '"' + gGTailN + '"') else ""} \
      ~{if defined(lLTailN) then ("--ltailn " +  '"' + lLTailN + '"') else ""} \
      ~{if defined(tailTailP) then ("--tailp " +  '"' + tailTailP + '"') else ""} \
      ~{if defined(hHFile) then ("--hfile " +  '"' + hHFile + '"') else ""} \
      ~{if defined(sSFile) then ("--sfile " +  '"' + sSFile + '"') else ""} \
      ~{if defined(qqQqFile) then ("--qqfile " +  '"' + qqQqFile + '"') else ""} \
      ~{if defined(fFFile) then ("--ffile " +  '"' + fFFile + '"') else ""} \
      ~{if defined(xXFile) then ("--xfile " +  '"' + xXFile + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{true="--nonbanded" false="" nonNonBanded} \
      ~{true="--nonull3" false="" nonull3Nonull3} \
      ~{true="--random" false="" randomRandom} \
      ~{if defined(gcGc) then ("--gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}