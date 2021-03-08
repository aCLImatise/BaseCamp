version 1.0

task Txt2ftblpyNET {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py NET \
      ~{txttwoftbldotpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/influx_si:5.4.0--py_0"
  }
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}