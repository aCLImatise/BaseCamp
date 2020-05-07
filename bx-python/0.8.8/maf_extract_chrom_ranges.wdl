version 1.0

task MafExtractChromRanges.py {
  input {
    Boolean minMinCols
    String prefixPrefix
  }
  command <<<
    maf_extract_chrom_ranges.py \
      ~{true="--mincols" false="" minMinCols} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}