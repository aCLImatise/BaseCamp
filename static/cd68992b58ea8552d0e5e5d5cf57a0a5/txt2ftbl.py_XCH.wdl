version 1.0

task Txt2ftblpyXCH {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py XCH \
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