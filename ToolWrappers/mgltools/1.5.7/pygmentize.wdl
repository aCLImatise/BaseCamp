version 1.0

task Pygmentize {
  command <<<
    pygmentize
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}