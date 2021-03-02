version 1.0

task BrackenbuildREADLEN {
  command <<<
    bracken_build READ_LEN
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}