version 1.0

task DumpPBRLayoutStore {
  command <<<
    dumpPBRLayoutStore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}