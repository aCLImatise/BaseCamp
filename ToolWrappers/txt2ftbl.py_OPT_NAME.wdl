version 1.0

task Txt2ftblpyOPTNAME {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl_py OPT_NAME \
      ~{txttwoftbldotpy}
  >>>
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}