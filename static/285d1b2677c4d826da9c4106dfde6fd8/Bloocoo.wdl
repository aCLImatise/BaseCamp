version 1.0

task Bloocoo {
  input {
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean fileFile
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean abundanceAbundanceMinThreshold
    Boolean histoHistoMax
    Boolean soliditySolidityKind
    Boolean maxMaxMemory
    Boolean maxMaxDisk
    Boolean solidSolidKmErsOut
    Boolean outOut
    Boolean outOutDir
    Boolean outOutTmp
    Boolean outOutCompress
    Boolean minimizerMinimizerType
    Boolean minimizerMinimizerSize
    Boolean repartitionRepartitionType
    Boolean highHighRecall
    Boolean highHighPrecision
    Boolean slowSlow
    Boolean ionIon
    Boolean errErrTab
    Boolean maxMaxTrim
    Boolean fromFromH5
    Boolean countCountOnly
  }
  command <<<
    Bloocoo \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-file" false="" fileFile} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-abundance-min-threshold" false="" abundanceAbundanceMinThreshold} \
      ~{true="-histo-max" false="" histoHistoMax} \
      ~{true="-solidity-kind" false="" soliditySolidityKind} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-max-disk" false="" maxMaxDisk} \
      ~{true="-solid-kmers-out" false="" solidSolidKmErsOut} \
      ~{true="-out" false="" outOut} \
      ~{true="-out-dir" false="" outOutDir} \
      ~{true="-out-tmp" false="" outOutTmp} \
      ~{true="-out-compress" false="" outOutCompress} \
      ~{true="-minimizer-type" false="" minimizerMinimizerType} \
      ~{true="-minimizer-size" false="" minimizerMinimizerSize} \
      ~{true="-repartition-type" false="" repartitionRepartitionType} \
      ~{true="-high-recall" false="" highHighRecall} \
      ~{true="-high-precision" false="" highHighPrecision} \
      ~{true="-slow" false="" slowSlow} \
      ~{true="-ion" false="" ionIon} \
      ~{true="-err-tab" false="" errErrTab} \
      ~{true="-max-trim" false="" maxMaxTrim} \
      ~{true="-from-h5" false="" fromFromH5} \
      ~{true="-count-only" false="" countCountOnly}
  >>>
}