version 1.0

task MafExtractChromRangespy {
  input {
    Int? min_cols
    String? prefix
    String interval_file
    String refname_vertical_line_ref_index
  }
  command <<<
    maf_extract_chrom_ranges_py \
      ~{interval_file} \
      ~{refname_vertical_line_ref_index} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    min_cols: "Minimum length (columns) required for alignment to be\\noutput"
    prefix: "Prefix\\n"
    interval_file: ""
    refname_vertical_line_ref_index: ""
  }
  output {
    File out_stdout = stdout()
  }
}