version 1.0

task SamFLAGinfo.pl {
  input {
    Int? var_int
  }
  command <<<
    samFLAGinfo.pl \
      ~{var_int}
  >>>
  parameter_meta {
    var_int: ""
  }
}