version 1.0

task SanityCheckMappingFilepl {
  command <<<
    sanity_check_mapping_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}