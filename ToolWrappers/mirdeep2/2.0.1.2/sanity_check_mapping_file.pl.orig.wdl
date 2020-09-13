version 1.0

task SanityCheckMappingFileplorig {
  command <<<
    sanity_check_mapping_file_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}