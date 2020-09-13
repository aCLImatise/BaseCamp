version 1.0

task Jaspextract {
  command <<<
    jaspextract
  >>>
  output {
    File out_stdout = stdout()
  }
}