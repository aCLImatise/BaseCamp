version 1.0

task Bamlastfilter {
  command <<<
    bamlastfilter
  >>>
  output {
    File out_stdout = stdout()
  }
}