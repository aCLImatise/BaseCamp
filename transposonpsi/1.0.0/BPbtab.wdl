version 1.0

task BPbtab {
  command <<<
    BPbtab
  >>>
  output {
    File out_stdout = stdout()
  }
}