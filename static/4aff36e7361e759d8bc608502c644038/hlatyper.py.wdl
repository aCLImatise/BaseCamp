version 1.0

task Hlatyperpy {
  command <<<
    hlatyper_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/optitype:1.3.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}