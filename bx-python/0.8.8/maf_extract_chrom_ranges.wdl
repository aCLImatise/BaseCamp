version 1.0

task MafExtractChromRanges.py {
  input {
    Int? min_cols
    String? prefix
    Int interval_file
    String refname_vertical_line_ref_index
  }
  command <<<
    maf_extract_chrom_ranges.py \
      ~{interval_file} \
      ~{refname_vertical_line_ref_index} \
      ~{if defined(min_cols) then ("--mincols " +  '"' + min_cols + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    min_cols: "Minimum length (columns) required for alignment to be output"
    prefix: "Prefix"
    interval_file: ""
    refname_vertical_line_ref_index: ""
  }
}