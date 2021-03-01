version 1.0

task ReadsToCtgMappy {
  command <<<
    reads_to_ctg_map_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}