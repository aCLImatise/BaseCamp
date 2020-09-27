version 1.0

task ReadsToCtgMappy {
  command <<<
    reads_to_ctg_map_py
  >>>
  output {
    File out_stdout = stdout()
  }
}