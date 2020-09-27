version 1.0

task Txt2ftblpyNAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py NAME \
      ~{txttwoftbldotpy}
  >>>
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}