version 1.0

task BedSubtractBasewise.py {
  input {
    String bed_file_one
    String bed_file_two
  }
  command <<<
    bed_subtract_basewise.py \
      ~{bed_file_one} \
      ~{bed_file_two}
  >>>
  parameter_meta {
    bed_file_one: ""
    bed_file_two: ""
  }
}