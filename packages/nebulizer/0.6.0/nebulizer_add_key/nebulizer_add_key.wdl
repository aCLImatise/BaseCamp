version 1.0

task NebulizerAddKey {
  command <<<
    nebulizer add_key
  >>>
  output {
    File out_stdout = stdout()
  }
}