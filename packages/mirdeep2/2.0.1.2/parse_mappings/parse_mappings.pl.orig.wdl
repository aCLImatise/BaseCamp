version 1.0

task ParseMappingsplorig {
  command <<<
    parse_mappings_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}