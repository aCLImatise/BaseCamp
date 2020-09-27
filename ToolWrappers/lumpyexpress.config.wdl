version 1.0

task Lumpyexpressconfig {
  command <<<
    lumpyexpress_config
  >>>
  output {
    File out_stdout = stdout()
  }
}