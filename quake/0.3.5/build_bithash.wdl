version 1.0

task BuildBithash {
  command <<<
    build_bithash
  >>>
  output {
    File out_stdout = stdout()
  }
}