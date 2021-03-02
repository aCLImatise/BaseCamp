version 1.0

task Lumpyexpressconfig {
  command <<<
    lumpyexpress_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}