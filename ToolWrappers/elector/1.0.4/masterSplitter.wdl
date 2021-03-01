version 1.0

task MasterSplitter {
  command <<<
    masterSplitter
  >>>
  runtime {
    docker: "quay.io/biocontainers/elector:1.0.4--py36hf0b53f7_1"
  }
  output {
    File out_stdout = stdout()
  }
}