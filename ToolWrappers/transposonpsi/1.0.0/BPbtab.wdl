version 1.0

task BPbtab {
  command <<<
    BPbtab
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}