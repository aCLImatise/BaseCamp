version 1.0

task FixTrishAwk {
  input {
    String awk
    String tri_file
  }
  command <<<
    fixTri_sh awk \
      ~{awk} \
      ~{tri_file}
  >>>
  parameter_meta {
    awk: ""
    tri_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}