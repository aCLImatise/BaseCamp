version 1.0

task Vcfsitesummarize {
  command <<<
    vcfsitesummarize
  >>>
  output {
    File out_stdout = stdout()
  }
}