version 1.0

task Runcabogpy {
  input {
    String para_file
    String readfile
    String? library_info_file
  }
  command <<<
    runcabog_py \
      ~{para_file} \
      ~{readfile} \
      ~{library_info_file}
  >>>
  parameter_meta {
    para_file: ""
    readfile: ""
    library_info_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}