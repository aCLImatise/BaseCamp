version 1.0

task BedIntersectBasewise.py {
  input {
    String bed_file_one
    String bed_file_two
  }
  command <<<
    bed_intersect_basewise.py \
      ~{bed_file_one} \
      ~{bed_file_two}
  >>>
  parameter_meta {
    bed_file_one: ""
    bed_file_two: ""
  }
}