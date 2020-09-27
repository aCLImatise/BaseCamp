version 1.0

task PhyluceUtilitiesMergeMultipleGzipFiles {
  input {
    File? var_output
    File? config
    String? section
    String? verbosity
    File? log_path
    Boolean? trimmed
  }
  command <<<
    phyluce_utilities_merge_multiple_gzip_files \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (trimmed) then "--trimmed" else ""}
  >>>
  parameter_meta {
    var_output: "[--section SECTION]\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH]\\n[--trimmed]"
    config: "The path to the config file to use for merging."
    section: "The section holding the merge info."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    trimmed: "If the reads have already been trimmed."
  }
  output {
    File out_stdout = stdout()
  }
}