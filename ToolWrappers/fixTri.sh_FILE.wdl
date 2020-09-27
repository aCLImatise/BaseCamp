version 1.0

task FixTrishFILE {
  input {
    File file
    String tri_file
  }
  command <<<
    fixTri_sh FILE \
      ~{file} \
      ~{tri_file}
  >>>
  parameter_meta {
    file: ""
    tri_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}