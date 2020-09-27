version 1.0

task Gd2copypal {
  input {
    Int gd_two_copy_pal
    Int palette_file_dot_gd_two
    File filename_dot_gd_two
  }
  command <<<
    _gd2copypal \
      ~{gd_two_copy_pal} \
      ~{palette_file_dot_gd_two} \
      ~{filename_dot_gd_two}
  >>>
  parameter_meta {
    gd_two_copy_pal: ""
    palette_file_dot_gd_two: ""
    filename_dot_gd_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}