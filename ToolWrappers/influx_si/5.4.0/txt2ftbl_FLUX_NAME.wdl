version 1.0

task Txt2ftblFLUXNAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl FLUX_NAME \
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