version 1.0

task Apirst2htmlpy {
  command <<<
    apirst2html_py
  >>>
  output {
    File out_stdout = stdout()
  }
}