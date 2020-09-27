version 1.0

task Meraculouspl {
  command <<<
    meraculous_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}