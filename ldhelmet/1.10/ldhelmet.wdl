version 1.0

task Ldhelmet {
  command <<<
    ldhelmet
  >>>
  output {
    File out_stdout = stdout()
  }
}