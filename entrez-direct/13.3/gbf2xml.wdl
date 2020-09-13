version 1.0

task Gbf2xml {
  command <<<
    gbf2xml
  >>>
  output {
    File out_stdout = stdout()
  }
}