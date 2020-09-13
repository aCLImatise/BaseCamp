version 1.0

task Printsextract {
  command <<<
    printsextract
  >>>
  output {
    File out_stdout = stdout()
  }
}