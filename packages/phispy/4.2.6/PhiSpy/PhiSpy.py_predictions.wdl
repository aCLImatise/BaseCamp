version 1.0

task PhiSpypyPredictions {
  input {
    String? m
    String? o
    String phi_spy_do_tpy
  }
  command <<<
    PhiSpy_py predictions \
      ~{phi_spy_do_tpy} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0"
  }
  parameter_meta {
    m: ""
    o: ""
    phi_spy_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}