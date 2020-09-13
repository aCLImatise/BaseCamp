version 1.0

task UmisSparse {
  input {
    String csv
    String sparse
  }
  command <<<
    umis sparse \
      ~{csv} \
      ~{sparse}
  >>>
  parameter_meta {
    csv: ""
    sparse: ""
  }
  output {
    File out_stdout = stdout()
  }
}