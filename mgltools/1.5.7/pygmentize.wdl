version 1.0

task Pygmentize {
  command <<<
    pygmentize
  >>>
  output {
    File out_stdout = stdout()
  }
}