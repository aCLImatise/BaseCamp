version 1.0

task MakeCrdHg {
  input {
    String unit
  }
  command <<<
    make_crd_hg \
      ~{unit}
  >>>
  parameter_meta {
    unit: "10 Error on OPEN: make_crd.in"
  }
  output {
    File out_stdout = stdout()
  }
}