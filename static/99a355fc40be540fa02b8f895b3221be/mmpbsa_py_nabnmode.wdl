version 1.0

task MmpbsaPyNabnmode {
  command <<<
    mmpbsa_py_nabnmode
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}