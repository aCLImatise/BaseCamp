version 1.0

task Dbgh5 {
  input {
    Boolean noNoMphF
    Boolean inIn
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean abundanceAbundanceMinThreshold
    Boolean histoHistoMax
    Boolean soliditySolidityKind
    Boolean soliditySolidityCustom
    Boolean maxMaxMemory
    Boolean maxMaxDisk
    Boolean solidSolidKmErsOut
    Boolean outOut
    Boolean outOutDir
    Boolean outOutTmp
    Boolean outOutCompress
    Boolean storageStorageType
    Boolean minimizerMinimizerType
    Boolean minimizerMinimizerSize
    Boolean repartitionRepartitionType
    Boolean bloomBloom
    Boolean deDeBloom
    Boolean deDeBloomImpl
    Boolean branchingBranchingNodes
    Boolean topologyTopologyStats
    Boolean configConfigOnly
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean integerIntegerPrecision
    Boolean emailEmail
    Boolean emailEmailFmt
    Boolean checkCheck
    Boolean checkCheckDump
    Boolean redoRedoBCalm
    Boolean skipSkipBCalm
    Boolean redoRedoBGlue
    Boolean skipSkipBGlue
    Boolean redoRedoLinks
    Boolean skipSkipLinks
    String? versionVersion
    String? gitGitSha1
    String? buildBuildDate
    String? buildBuildSystem
    String? buildBuildCompiler
    String? buildBuildKmErSize
  }
  command <<<
    dbgh5 \
      ~{versionVersion} \
      ~{true="-no-mphf" false="" noNoMphF} \
      ~{true="-in" false="" inIn} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-abundance-min-threshold" false="" abundanceAbundanceMinThreshold} \
      ~{true="-histo-max" false="" histoHistoMax} \
      ~{true="-solidity-kind" false="" soliditySolidityKind} \
      ~{true="-solidity-custom" false="" soliditySolidityCustom} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-max-disk" false="" maxMaxDisk} \
      ~{true="-solid-kmers-out" false="" solidSolidKmErsOut} \
      ~{true="-out" false="" outOut} \
      ~{true="-out-dir" false="" outOutDir} \
      ~{true="-out-tmp" false="" outOutTmp} \
      ~{true="-out-compress" false="" outOutCompress} \
      ~{true="-storage-type" false="" storageStorageType} \
      ~{true="-minimizer-type" false="" minimizerMinimizerType} \
      ~{true="-minimizer-size" false="" minimizerMinimizerSize} \
      ~{true="-repartition-type" false="" repartitionRepartitionType} \
      ~{true="-bloom" false="" bloomBloom} \
      ~{true="-debloom" false="" deDeBloom} \
      ~{true="-debloom-impl" false="" deDeBloomImpl} \
      ~{true="-branching-nodes" false="" branchingBranchingNodes} \
      ~{true="-topology-stats" false="" topologyTopologyStats} \
      ~{true="-config-only" false="" configConfigOnly} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-integer-precision" false="" integerIntegerPrecision} \
      ~{true="-email" false="" emailEmail} \
      ~{true="-email-fmt" false="" emailEmailFmt} \
      ~{true="-check" false="" checkCheck} \
      ~{true="-check-dump" false="" checkCheckDump} \
      ~{true="-redo-bcalm" false="" redoRedoBCalm} \
      ~{true="-skip-bcalm" false="" skipSkipBCalm} \
      ~{true="-redo-bglue" false="" redoRedoBGlue} \
      ~{true="-skip-bglue" false="" skipSkipBGlue} \
      ~{true="-redo-links" false="" redoRedoLinks} \
      ~{true="-skip-links" false="" skipSkipLinks} \
      ~{gitGitSha1} \
      ~{buildBuildDate} \
      ~{buildBuildSystem} \
      ~{buildBuildCompiler} \
      ~{buildBuildKmErSize}
  >>>
}