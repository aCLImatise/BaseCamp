version 1.0

task Abyssbwamem {
  command <<<
    abyss_bwamem
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}