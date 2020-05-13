version 1.0

task RnaConvert.py {
  input {
    Boolean keepKeepLengthOneStems
    String targetTargetType
    Boolean toToFile
    File filenameFilename
    Boolean forceForce
    Boolean pseudoPseudoKnots
    String chainChain
    String pdbPdbSecondaryStructure
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean qQ
    String? rnaRna
  }
  command <<<
    rnaConvert.py \
      ~{rnaRna} \
      ~{true="--keep-length-one-stems" false="" keepKeepLengthOneStems} \
      ~{if defined(targetTargetType) then ("--target-type " +  '"' + targetTargetType + '"') else ""} \
      ~{true="--to-file" false="" toToFile} \
      ~{if defined(filenameFilename) then ("--filename " +  '"' + filenameFilename + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--pseudoknots" false="" pseudoPseudoKnots} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(pdbPdbSecondaryStructure) then ("--pdb-secondary-structure " +  '"' + pdbPdbSecondaryStructure + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-q" false="" qQ}
  >>>
}