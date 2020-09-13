version 1.0

task BrBiofetchrb {
  command <<<
    br_biofetch_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}