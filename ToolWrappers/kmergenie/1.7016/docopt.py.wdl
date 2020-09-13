version 1.0

task Docoptpy {
  command <<<
    docopt_py
  >>>
  output {
    File out_stdout = stdout()
  }
}