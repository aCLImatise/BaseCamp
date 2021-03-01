version 1.0

task Antbat {
  command <<<
    ant_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}