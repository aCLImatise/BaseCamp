version 1.0

task SamFLAGinfo.pl.orig {
  input {
    String perl
    String sam_flag_info_do_tpl
    Int? var_int
  }
  command <<<
    samFLAGinfo.pl.orig \
      ~{perl} \
      ~{sam_flag_info_do_tpl} \
      ~{var_int}
  >>>
  parameter_meta {
    perl: ""
    sam_flag_info_do_tpl: ""
    var_int: ""
  }
}