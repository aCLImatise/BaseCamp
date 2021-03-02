version 1.0

task AxtExtractRangespy {
  input {
    Int? min_cols
    String interval_file
    String ref_index
  }
  command <<<
    axt_extract_ranges_py \
      ~{interval_file} \
      ~{ref_index} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_cols: "Minimum length (columns) required for alignment to be\\noutput\\n"
    interval_file: ""
    ref_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}