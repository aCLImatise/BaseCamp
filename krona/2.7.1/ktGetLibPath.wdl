version 1.0

task KtGetLibPath {
  command <<<
    ktGetLibPath
  >>>
  output {
    File out_stdout = stdout()
  }
}