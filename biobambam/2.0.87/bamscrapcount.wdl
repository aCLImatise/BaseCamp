version 1.0

task Bamscrapcount {
  command <<<
    bamscrapcount
  >>>
  output {
    File out_stdout = stdout()
  }
}