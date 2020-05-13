version 1.0

task MafExtractRanges.py {
  input {
    Boolean minMinCols
  }
  command <<<
    maf_extract_ranges.py \
      ~{true="--mincols" false="" minMinCols}
  >>>
}