version 1.0

task AxtExtractRanges.py {
  input {
    Boolean minMinCols
  }
  command <<<
    axt_extract_ranges.py \
      ~{true="--mincols" false="" minMinCols}
  >>>
}