version 1.0

task BrackenbuildTHREADS {
  command <<<
    bracken_build THREADS
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}