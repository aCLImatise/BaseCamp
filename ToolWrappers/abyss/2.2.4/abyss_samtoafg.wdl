version 1.0

task Abysssamtoafg {
  command <<<
    abyss_samtoafg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}