version 1.0

task SanityCheckMappingFilepl {
  command <<<
    sanity_check_mapping_file_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}