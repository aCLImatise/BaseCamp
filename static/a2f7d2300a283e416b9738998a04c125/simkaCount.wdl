version 1.0

task SimkaCount {
  input {
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean outOutTmpSimKa
    Boolean bankBankName
    Boolean bankBankIndex
    Boolean minMinReadSize
    Boolean minMinShannonIndex
    Boolean maxMaxReads
    Boolean nbNbDatasets
    Boolean nbNbPartitions
    Boolean inIn
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
  }
  command <<<
    simkaCount \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-out-tmp-simka" false="" outOutTmpSimKa} \
      ~{true="-bank-name" false="" bankBankName} \
      ~{true="-bank-index" false="" bankBankIndex} \
      ~{true="-min-read-size" false="" minMinReadSize} \
      ~{true="-min-shannon-index" false="" minMinShannonIndex} \
      ~{true="-max-reads" false="" maxMaxReads} \
      ~{true="-nb-datasets" false="" nbNbDatasets} \
      ~{true="-nb-partitions" false="" nbNbPartitions} \
      ~{true="-in" false="" inIn} \
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
      ~{true="-repartition-type" false="" repartitionRepartitionType}
  >>>
}