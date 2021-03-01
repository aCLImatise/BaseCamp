version 1.0

task GetEliteRangepy {
  command <<<
    get_elite_range_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}