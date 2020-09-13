version 1.0

task MafExtractRangespy {
  input {
    Int? min_cols
    String interval_file
    String ref_index
  }
  command <<<
    maf_extract_ranges_py \
      ~{interval_file} \
      ~{ref_index} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""}
  >>>
  parameter_meta {
    min_cols: "Minimum length (columns) required for alignment to be\\noutput\\n"
    interval_file: ""
    ref_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}