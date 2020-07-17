version 1.0

task PhyluceUtilitiesMergeMultipleGzipFiles {
  input {
    String? config
    String? path_directory_store
    String? section
    String? verbosity
    String? log_path
    Boolean? trimmed
  }
  command <<<
    phyluce_utilities_merge_multiple_gzip_files \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(path_directory_store) then ("--output " +  '"' + path_directory_store + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{true="--trimmed" false="" trimmed}
  >>>
  parameter_meta {
    config: "The path to the config file to use for merging."
    path_directory_store: "The path to a directory in which to store the output."
    section: "The section holding the merge info."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    trimmed: "If the reads have already been trimmed."
  }
}