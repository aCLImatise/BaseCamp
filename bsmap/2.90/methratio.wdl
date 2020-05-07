version 1.0

task Methratio.py {
  input {
    File outOut
    File alignmentAlignmentCopy
    File wigWig
    String wigWigBin
    File refRef
    String chrChr
    File samSamPath
    Boolean uniqueUnique
    Boolean pairPair
    Boolean zeroZeroMeth
    Boolean quietQuiet
    Boolean removeRemoveDuplicate
    String trimTrimFillIn
    Boolean combineCombineCpg
    String minMinDepth
    Boolean noNoHeader
    String ctCtSnp
    String contextContext
    String? bsBsMapMappingFiles
  }
  command <<<
    methratio.py \
      ~{bsBsMapMappingFiles} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(alignmentAlignmentCopy) then ("--alignment-copy " +  '"' + alignmentAlignmentCopy + '"') else ""} \
      ~{if defined(wigWig) then ("--wig " +  '"' + wigWig + '"') else ""} \
      ~{if defined(wigWigBin) then ("--wig-bin " +  '"' + wigWigBin + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(samSamPath) then ("--sam-path " +  '"' + samSamPath + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--pair" false="" pairPair} \
      ~{true="--zero-meth" false="" zeroZeroMeth} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--remove-duplicate" false="" removeRemoveDuplicate} \
      ~{if defined(trimTrimFillIn) then ("--trim-fillin " +  '"' + trimTrimFillIn + '"') else ""} \
      ~{true="--combine-CpG" false="" combineCombineCpg} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{if defined(ctCtSnp) then ("--ct-snp " +  '"' + ctCtSnp + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""}
  >>>
}