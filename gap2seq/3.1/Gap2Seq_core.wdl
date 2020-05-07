version 1.0

task Gap2SeqCore {
  input {
    Boolean lengthLength
    Boolean rightRight
    Boolean leftLeft
    Boolean randRandSeed
    Boolean uniqueUnique
    Boolean bestBestOnly
    Boolean allAllUpper
    Boolean maxMaxMem
    Boolean fuzFuz
    Boolean distDistError
    Boolean filledFilled
    Boolean scaffoldsScaffolds
    Boolean readsReads
    Boolean solidSolid
    Boolean kK
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    Gap2Seq-core \
      ~{true="-length" false="" lengthLength} \
      ~{true="-right" false="" rightRight} \
      ~{true="-left" false="" leftLeft} \
      ~{true="-randseed" false="" randRandSeed} \
      ~{true="-unique" false="" uniqueUnique} \
      ~{true="-best-only" false="" bestBestOnly} \
      ~{true="-all-upper" false="" allAllUpper} \
      ~{true="-max-mem" false="" maxMaxMem} \
      ~{true="-fuz" false="" fuzFuz} \
      ~{true="-dist-error" false="" distDistError} \
      ~{true="-filled" false="" filledFilled} \
      ~{true="-scaffolds" false="" scaffoldsScaffolds} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-solid" false="" solidSolid} \
      ~{true="-k" false="" kK} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}