version 1.0

task BrackenbuildTHREADS {
  command <<<
    bracken_build THREADS
  >>>
  output {
    File out_stdout = stdout()
  }
}