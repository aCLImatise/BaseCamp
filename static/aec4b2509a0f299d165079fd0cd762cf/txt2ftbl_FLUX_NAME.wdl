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
    docker: "None"
  }
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}