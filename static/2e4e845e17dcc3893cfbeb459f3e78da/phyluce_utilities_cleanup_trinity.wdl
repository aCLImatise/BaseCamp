version 1.0

task PhyluceUtilitiesCleanupTrinity {
  input {
    File? path_to_clean
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_utilities_cleanup_trinity \
      ~{if defined(path_to_clean) then ("--path-to-clean " +  '"' + path_to_clean + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_to_clean: "The directory holding the trinity files to clean"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
  }
}