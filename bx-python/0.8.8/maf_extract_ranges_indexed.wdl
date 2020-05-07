version 1.0

task MafExtractRangesIndexed.py {
  input {
    Int minMinCols
    Boolean chopChop
    String srcSrc
    String prefixPrefix
    String dirDir
    Boolean strandStrand
    Boolean useUseCache
  }
  command <<<
    maf_extract_ranges_indexed.py \
      ~{if defined(minMinCols) then ("--mincols " +  '"' + minMinCols + '"') else ""} \
      ~{true="--chop" false="" chopChop} \
      ~{if defined(srcSrc) then ("--src " +  '"' + srcSrc + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="--usecache" false="" useUseCache}
  >>>
}