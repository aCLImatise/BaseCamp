version 1.0

task SanityCheckMappingFileplorig {
  command <<<
    sanity_check_mapping_file_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}