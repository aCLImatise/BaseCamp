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
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
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