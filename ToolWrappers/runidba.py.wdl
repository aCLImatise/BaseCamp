version 1.0

task Runidbapy {
  input {
    String para_file
    String readfile
    String output_path_dir
  }
  command <<<
    runidba_py \
      ~{para_file} \
      ~{readfile} \
      ~{output_path_dir}
  >>>
  parameter_meta {
    para_file: ""
    readfile: ""
    output_path_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}