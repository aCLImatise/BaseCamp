version 1.0

task Autoheaderbak {
  command <<<
    autoheader_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}