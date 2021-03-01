version 1.0

task Bamlastfilter {
  command <<<
    bamlastfilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}