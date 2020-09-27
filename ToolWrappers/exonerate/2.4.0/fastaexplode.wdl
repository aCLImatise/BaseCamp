version 1.0

task Fastaexplode {
  command <<<
    fastaexplode
  >>>
  output {
    File out_stdout = stdout()
  }
}