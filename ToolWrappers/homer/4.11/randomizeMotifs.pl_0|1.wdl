version 1.0

task RandomizeMotifspl1 {
  command <<<
    randomizeMotifs_pl __1
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}