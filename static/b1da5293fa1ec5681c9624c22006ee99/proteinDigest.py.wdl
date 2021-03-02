version 1.0

task ProteinDigestpy {
  command <<<
    proteinDigest_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}