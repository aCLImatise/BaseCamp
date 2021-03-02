version 1.0

task Txt2ftblXCH {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl XCH \
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