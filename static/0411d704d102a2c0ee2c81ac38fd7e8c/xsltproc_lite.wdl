version 1.0

task XsltprocLite {
  command <<<
    xsltproc_lite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}