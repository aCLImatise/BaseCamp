version 1.0

task BedDiffBasewiseSummary.py {
  input {
    String bed_file_one
    String bed_file_two
  }
  command <<<
    bed_diff_basewise_summary.py \
      ~{bed_file_one} \
      ~{bed_file_two}
  >>>
  parameter_meta {
    bed_file_one: ""
    bed_file_two: ""
  }
}