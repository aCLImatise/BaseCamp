version 1.0

task RnaConvert.py {
  input {
    Boolean keepKeepLengthOneStems
    String targetTargetType
    Boolean toToFile
    File filenameFilename
    Boolean forceForce
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
    rnaConvert.py \
      ~{rnaRna} \
      ~{true="--keep-length-one-stems" false="" keepKeepLengthOneStems} \
      ~{if defined(targetTargetType) then ("--target-type " +  '"' + targetTargetType + '"') else ""} \
      ~{true="--to-file" false="" toToFile} \
      ~{if defined(filenameFilename) then ("--filename " +  '"' + filenameFilename + '"') else ""} \
      ~{true="--force" false="" forceForce} \
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