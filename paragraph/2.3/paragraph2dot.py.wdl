version 1.0

task Paragraph2dotpy {
  command <<<
    paragraph2dot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}