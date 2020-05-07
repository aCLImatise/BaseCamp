version 1.0

task SgaScaffold2fasta {
  input {
    Boolean verboseVerbose
    File contigContigFile
    File asAsQgFile
    Boolean noNoSingletons
    File outfileOutfile
    String minMinLength
    Boolean writeWriteUnplaced
    Boolean writeWriteNames
    String minMinGapLength
    Boolean useUseOverlap
    String graphGraphResolve
    String distanceDistanceFactor
  }
  command <<<
    sga scaffold2fasta \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(contigContigFile) then ("--contig-file " +  '"' + contigContigFile + '"') else ""} \
      ~{if defined(asAsQgFile) then ("--asqg-file " +  '"' + asAsQgFile + '"') else ""} \
      ~{true="--no-singletons" false="" noNoSingletons} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{true="--write-unplaced" false="" writeWriteUnplaced} \
      ~{true="--write-names" false="" writeWriteNames} \
      ~{if defined(minMinGapLength) then ("--min-gap-length " +  '"' + minMinGapLength + '"') else ""} \
      ~{true="--use-overlap" false="" useUseOverlap} \
      ~{if defined(graphGraphResolve) then ("--graph-resolve " +  '"' + graphGraphResolve + '"') else ""} \
      ~{if defined(distanceDistanceFactor) then ("--distanceFactor " +  '"' + distanceDistanceFactor + '"') else ""}
  >>>
}