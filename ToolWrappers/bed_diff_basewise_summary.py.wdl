version 1.0

task BedDiffBasewiseSummarypy {
  input {
    Int bed_file_one
    Int bed_file_two
  }
  command <<<
    bed_diff_basewise_summary_py \
      ~{bed_file_one} \
      ~{bed_file_two}
  >>>
  parameter_meta {
    bed_file_one: ""
    bed_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}