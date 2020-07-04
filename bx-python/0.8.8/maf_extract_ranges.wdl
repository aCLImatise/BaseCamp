version 1.0

task MafExtractRanges.py {
  input {
    Int? min_cols
    Int interval_file
    String ref_index
  }
  command <<<
    maf_extract_ranges.py \
      ~{interval_file} \
      ~{ref_index} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""}
  >>>
  parameter_meta {
    min_cols: "Minimum length (columns) required for alignment to be output"
    interval_file: ""
    ref_index: ""
  }
}