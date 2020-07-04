version 1.0

task Runcabog.py {
  input {
    String para_file
    String readfile
    String? library_info_file
  }
  command <<<
    runcabog.py \
      ~{para_file} \
      ~{readfile} \
      ~{library_info_file}
  >>>
  parameter_meta {
    para_file: ""
    readfile: ""
    library_info_file: ""
  }
}