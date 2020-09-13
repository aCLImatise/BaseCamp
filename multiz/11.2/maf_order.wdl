version 1.0

task MafOrder {
  command <<<
    maf_order
  >>>
  output {
    File out_stdout = stdout()
  }
}