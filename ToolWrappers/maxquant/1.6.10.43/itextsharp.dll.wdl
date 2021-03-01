version 1.0

task Itextsharpdll {
  command <<<
    itextsharp_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}