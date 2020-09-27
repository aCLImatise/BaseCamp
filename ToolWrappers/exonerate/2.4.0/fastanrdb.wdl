version 1.0

task Fastanrdb {
  command <<<
    fastanrdb
  >>>
  output {
    File out_stdout = stdout()
  }
}