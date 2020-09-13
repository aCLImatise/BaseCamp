version 1.0

task ExtractKmerspy {
  command <<<
    ExtractKmers_py
  >>>
  output {
    File out_stdout = stdout()
  }
}