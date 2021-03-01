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
    docker: "None"
  }
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}