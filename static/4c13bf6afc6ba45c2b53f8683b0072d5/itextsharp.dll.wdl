version 1.0

task Itextsharpdll {
  command <<<
    itextsharp_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}