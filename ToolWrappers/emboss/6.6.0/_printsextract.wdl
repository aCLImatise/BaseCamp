version 1.0

task Printsextract {
  command <<<
    _printsextract
  >>>
  output {
    File out_stdout = stdout()
  }
}