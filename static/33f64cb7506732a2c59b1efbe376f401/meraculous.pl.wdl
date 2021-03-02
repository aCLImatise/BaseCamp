version 1.0

task Meraculouspl {
  command <<<
    meraculous_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}