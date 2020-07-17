version 1.0

task Estpost.entropy {
  input {
    String in_file_one_dot_hdf_five
    String in_file_two_dot_hdf_five
  }
  command <<<
    estpost.entropy \
      ~{in_file_one_dot_hdf_five} \
      ~{in_file_two_dot_hdf_five}
  >>>
  parameter_meta {
    in_file_one_dot_hdf_five: ""
    in_file_two_dot_hdf_five: ""
  }
}