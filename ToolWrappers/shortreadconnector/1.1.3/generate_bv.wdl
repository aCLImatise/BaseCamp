version 1.0

task GenerateBv {
  command <<<
    generate_bv
  >>>
  output {
    File out_stdout = stdout()
  }
}