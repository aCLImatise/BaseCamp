version 1.0

task BedIntersectBasewisepy {
  input {
    Int bed_file_one
    Int bed_file_two
  }
  command <<<
    bed_intersect_basewise_py \
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