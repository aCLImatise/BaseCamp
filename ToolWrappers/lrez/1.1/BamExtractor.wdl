version 1.0

task BamExtractor {
  command <<<
    BamExtractor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}