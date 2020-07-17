version 1.0

task AxtExtractRanges.py {
  input {
    Int? min_cols
    Int interval_file
    String ref_index
  }
  command <<<
    axt_extract_ranges.py \
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