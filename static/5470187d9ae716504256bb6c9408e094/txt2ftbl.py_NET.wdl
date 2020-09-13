version 1.0

task Txt2ftblpyNET {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py NET \
      ~{txttwoftbldotpy}
  >>>
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}