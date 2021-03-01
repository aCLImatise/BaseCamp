version 1.0

task Apirst2htmlpy {
  command <<<
    apirst2html_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}