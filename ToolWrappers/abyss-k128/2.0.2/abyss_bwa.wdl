version 1.0

task Abyssbwa {
  command <<<
    abyss_bwa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}