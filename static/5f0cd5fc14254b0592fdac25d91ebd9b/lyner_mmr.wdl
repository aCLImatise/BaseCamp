version 1.0

task LynerMmr {
  command <<<
    lyner mmr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}