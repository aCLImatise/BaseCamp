version 1.0

task Bamexplode {
  command <<<
    bamexplode
  >>>
  output {
    File out_stdout = stdout()
  }
}