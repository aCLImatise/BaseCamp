version 1.0

task Spadescorrectorcore {
  command <<<
    spades_corrector_core
  >>>
  output {
    File out_stdout = stdout()
  }
}