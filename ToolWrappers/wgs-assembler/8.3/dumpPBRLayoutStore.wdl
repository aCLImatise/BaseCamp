version 1.0

task DumpPBRLayoutStore {
  command <<<
    dumpPBRLayoutStore
  >>>
  output {
    File out_stdout = stdout()
  }
}