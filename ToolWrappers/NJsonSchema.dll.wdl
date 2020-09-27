version 1.0

task NJsonSchemadll {
  command <<<
    NJsonSchema_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}