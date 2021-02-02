version 1.0

task Sagapythonversion {
  command <<<
    sagapython_version
  >>>
  output {
    File out_stdout = stdout()
  }
}