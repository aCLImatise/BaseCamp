version 1.0

task PyprophetIpfIPF {
  input {
    String py_prophet
    String ipf
  }
  command <<<
    pyprophet ipf IPF_ \
      ~{py_prophet} \
      ~{ipf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    py_prophet: ""
    ipf: ""
  }
  output {
    File out_stdout = stdout()
  }
}