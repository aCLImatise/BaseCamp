version 1.0

task Txt2ftblpyFLUXNAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py FLUX_NAME \
      ~{txttwoftbldotpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}