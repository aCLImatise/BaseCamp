version 1.0

task ProteinDigestpy {
  command <<<
    proteinDigest_py
  >>>
  output {
    File out_stdout = stdout()
  }
}