version 1.0

task CompareRNA.py {
  input {
    Boolean keepKeepLengthOneStems
    Boolean pseudoPseudoKnots
    String chainChain
    String pdbPdbSecondaryStructure
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean qQ
    Boolean accAcc
    Boolean rmsdRmsd
    Boolean pdbPdbRmsd
    String? rnaRna
  }
  command <<<
    compare_RNA.py \
      ~{rnaRna} \
      ~{true="--keep-length-one-stems" false="" keepKeepLengthOneStems} \
      ~{true="--pseudoknots" false="" pseudoPseudoKnots} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(pdbPdbSecondaryStructure) then ("--pdb-secondary-structure " +  '"' + pdbPdbSecondaryStructure + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-q" false="" qQ} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--rmsd" false="" rmsdRmsd} \
      ~{true="--pdb-rmsd" false="" pdbPdbRmsd}
  >>>
}