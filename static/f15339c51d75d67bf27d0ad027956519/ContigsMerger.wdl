version 1.0

task ContigsMerger {
  command <<<
    ContigsMerger
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}