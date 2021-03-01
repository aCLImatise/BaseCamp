version 1.0

task FixTrishAWKPROGRAM {
  input {
    String awk_program
    String tri_file
  }
  command <<<
    fixTri_sh AWK_PROGRAM \
      ~{awk_program} \
      ~{tri_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    awk_program: ""
    tri_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}