version 1.0

task MakeCrdHg {
  input {
    String make_crg_hg
    String unit
  }
  command <<<
    make_crd_hg \
      ~{make_crg_hg} \
      ~{unit}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    make_crg_hg: "usage: make_crd_hg <  trajectory_file "
    unit: "10 Error on OPEN: make_crd.in"
  }
  output {
    File out_stdout = stdout()
  }
}