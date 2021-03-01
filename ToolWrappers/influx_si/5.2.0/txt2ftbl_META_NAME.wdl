version 1.0

task Txt2ftblMETANAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl META_NAME \
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