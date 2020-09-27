version 1.0

task PashToLffrb {
  command <<<
    pashToLff_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}