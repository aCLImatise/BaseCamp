version 1.0

task Txt2ftblpyXCH {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py XCH \
      ~{txttwoftbldotpy}
  >>>
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}