version 1.0

task Runidba.py {
  input {
    String para_file
    String readfile
    String output_path_dir
  }
  command <<<
    runidba.py \
      ~{para_file} \
      ~{readfile} \
      ~{output_path_dir}
  >>>
  parameter_meta {
    para_file: ""
    readfile: ""
    output_path_dir: ""
  }
}