version 1.0

task Txt2ftblOPTNAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl OPT_NAME \
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