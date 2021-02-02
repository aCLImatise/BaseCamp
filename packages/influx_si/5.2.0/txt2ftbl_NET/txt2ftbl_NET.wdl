version 1.0

task Txt2ftblNET {
  input {
    Int txttwoftbldotpy
  }
  command <<<
    txt2ftbl NET \
      ~{txttwoftbldotpy}
  >>>
  parameter_meta {
    txttwoftbldotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}