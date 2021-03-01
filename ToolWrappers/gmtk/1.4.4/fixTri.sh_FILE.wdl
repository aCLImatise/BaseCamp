version 1.0

task FixTrishFILE {
  input {
    File var_file
    String tri_file
  }
  command <<<
    fixTri_sh FILE \
      ~{var_file} \
      ~{tri_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
    tri_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}