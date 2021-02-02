version 1.0

task AMOScmpshortReads {
  command <<<
    AMOScmp_shortReads
  >>>
  output {
    File out_stdout = stdout()
  }
}