version 1.0

task MakeANGRST {
  command <<<
    makeANG_RST
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}