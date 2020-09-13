version 1.0

task Rsembuildreadindex {
  command <<<
    rsem_build_read_index
  >>>
  output {
    File out_stdout = stdout()
  }
}