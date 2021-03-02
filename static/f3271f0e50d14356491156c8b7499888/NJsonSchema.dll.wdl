version 1.0

task NJsonSchemadll {
  command <<<
    NJsonSchema_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}