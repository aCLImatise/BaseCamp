version 1.0

task Wgs2ncbi {
  input {
    String ncbi
  }
  command <<<
    wgs2ncbi \
      ~{ncbi}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ncbi: "SYNOPSIS\\nUsage: wgs2ncbi [action] -conf [config file]"
  }
  output {
    File out_stdout = stdout()
  }
}