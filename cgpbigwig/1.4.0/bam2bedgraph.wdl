version 1.0

task Bam2bedgraph {
  input {
    Boolean? path_bamcram_file
    File? file_path_output
    Boolean? region
    Boolean? filter
    Boolean? filter_include
    Boolean? v
    String? cr_vertical_line_b
    String am
  }
  command <<<
    bam2bedgraph \
      ~{cr_vertical_line_b} \
      ~{am} \
      ~{if (path_bamcram_file) then "--input" else ""} \
      ~{if (file_path_output) then "--output" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (filter_include) then "--filter-include" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    path_bamcram_file: "Path to bam/cram input file. [default: stdin]"
    file_path_output: "File path for output. [default: stdout]"
    region: "Region in bam to access."
    filter: "Ignore reads with the filter flags [int]."
    filter_include: "[int]      SAM flags to include. [default: 0]\\nN.B. if properly paired reads are filtered for inclusion bam2bw will assume paired-end data\\nand exclude any proper-pair flagged reads not in F/R orientation.-a --overlap                   Use overlapping read check."
    v: ""
    cr_vertical_line_b: ""
    am: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_path_output = "${in_file_path_output}"
  }
}