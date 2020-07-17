version 1.0

task FixTri.sh {
  input {
    String tri_file
  }
  command <<<
    fixTri.sh \
      ~{tri_file}
  >>>
  parameter_meta {
    tri_file: ""
  }
}