version 1.0

task DescribeCg.py {
  input {
    Boolean keepKeepLengthOneStems
    String csvCsv
    String keysKeys
    String anglesAngles
    String distancesDistances
    Boolean perPerMl
    String modeMode
    Boolean pseudoPseudoKnots
    String chainsChains
    String pdbPdbSecondaryStructure
    String pdbPdbAnnotationTool
    Boolean pdbPdbAllowWwwQuery
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean qQ
    String? rnaRna
  }
  command <<<
    describe_cg.py \
      ~{rnaRna} \
      ~{true="--keep-length-one-stems" false="" keepKeepLengthOneStems} \
      ~{if defined(csvCsv) then ("--csv " +  '"' + csvCsv + '"') else ""} \
      ~{if defined(keysKeys) then ("--keys " +  '"' + keysKeys + '"') else ""} \
      ~{if defined(anglesAngles) then ("--angles " +  '"' + anglesAngles + '"') else ""} \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{true="--per-ml" false="" perPerMl} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--pseudoknots" false="" pseudoPseudoKnots} \
      ~{if defined(chainsChains) then ("--chains " +  '"' + chainsChains + '"') else ""} \
      ~{if defined(pdbPdbSecondaryStructure) then ("--pdb-secondary-structure " +  '"' + pdbPdbSecondaryStructure + '"') else ""} \
      ~{if defined(pdbPdbAnnotationTool) then ("--pdb-annotation-tool " +  '"' + pdbPdbAnnotationTool + '"') else ""} \
      ~{true="--pdb-allow-www-query" false="" pdbPdbAllowWwwQuery} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-q" false="" qQ}
  >>>
}