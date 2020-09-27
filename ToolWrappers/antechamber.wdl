version 1.0

task Antechamber {
  command <<<
    antechamber
  >>>
  output {
    File out_stdout = stdout()
  }
}