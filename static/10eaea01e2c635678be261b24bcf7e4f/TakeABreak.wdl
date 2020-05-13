version 1.0

task TakeABreak {
  input {
    Boolean inIn
    Boolean graphGraph
    Boolean outOut
    Boolean kmKmErSize
    Boolean abundanceAbundanceMin
    Boolean abundanceAbundanceMax
    Boolean soliditySolidityKind
    Boolean maxMaxDisk
    Boolean maxMaxMemory
    Boolean maxMaxSim
    Boolean repeatRepeat
    Boolean lctLct
    Boolean versionVersion
    Boolean nbNbCores
    Boolean verboseVerbose
  }
  command <<<
    TakeABreak \
      ~{true="-in" false="" inIn} \
      ~{true="-graph" false="" graphGraph} \
      ~{true="-out" false="" outOut} \
      ~{true="-kmer-size" false="" kmKmErSize} \
      ~{true="-abundance-min" false="" abundanceAbundanceMin} \
      ~{true="-abundance-max" false="" abundanceAbundanceMax} \
      ~{true="-solidity-kind" false="" soliditySolidityKind} \
      ~{true="-max-disk" false="" maxMaxDisk} \
      ~{true="-max-memory" false="" maxMaxMemory} \
      ~{true="-max-sim" false="" maxMaxSim} \
      ~{true="-repeat" false="" repeatRepeat} \
      ~{true="-lct" false="" lctLct} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}