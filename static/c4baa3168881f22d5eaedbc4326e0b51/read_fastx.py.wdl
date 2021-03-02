version 1.0

task ReadFastxpy {
  command <<<
    read_fastx_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0"
  }
  output {
    File out_stdout = stdout()
  }
}