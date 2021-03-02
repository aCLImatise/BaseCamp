version 1.0

task Abyssbwasw {
  command <<<
    abyss_bwasw
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}