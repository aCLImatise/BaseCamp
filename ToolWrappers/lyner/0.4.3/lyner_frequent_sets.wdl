version 1.0

task LynerFrequentsets {
  command <<<
    lyner frequent_sets
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}