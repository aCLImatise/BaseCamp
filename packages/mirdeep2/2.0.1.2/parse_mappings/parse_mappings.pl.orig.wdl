version 1.0

task ParseMappingsplorig {
  command <<<
    parse_mappings_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}