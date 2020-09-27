version 1.0

task MakeANGRST {
  command <<<
    makeANG_RST
  >>>
  output {
    File out_stdout = stdout()
  }
}