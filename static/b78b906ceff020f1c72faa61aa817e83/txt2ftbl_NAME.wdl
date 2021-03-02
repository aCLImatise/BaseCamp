version 1.0

task Txt2ftblNAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl NAME \
      ~{txttwoftbldotpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.3.0--py_0"
  }
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}