version 1.0

task XsltprocLite {
  command <<<
    xsltproc_lite
  >>>
  output {
    File out_stdout = stdout()
  }
}