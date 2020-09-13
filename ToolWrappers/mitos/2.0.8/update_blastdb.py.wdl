version 1.0

task Updateblastdbpy {
  command <<<
    update_blastdb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}