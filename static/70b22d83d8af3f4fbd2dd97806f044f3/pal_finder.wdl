version 1.0

task PalFinder {
  input {
    String perl
    String pal_finder_v_zero_dot_zero_two_dot_zero_four_do_tpl
    String config_file
  }
  command <<<
    pal_finder \
      ~{perl} \
      ~{pal_finder_v_zero_dot_zero_two_dot_zero_four_do_tpl} \
      ~{config_file}
  >>>
  parameter_meta {
    perl: ""
    pal_finder_v_zero_dot_zero_two_dot_zero_four_do_tpl: ""
    config_file: ""
  }
}