version 1.0

task ClstrSizeStat.pl {
  input {
    String cl_str_file
  }
  command <<<
    clstr_size_stat.pl \
      ~{cl_str_file}
  >>>
  parameter_meta {
    cl_str_file: ""
  }
}