version 1.0

task FfindexModify {
  input {
    Boolean? sort_index_file
    Boolean? unlink_entry_remove
    Boolean? print_version_info
  }
  command <<<
    ffindex_modify \
      ~{if (sort_index_file) then "-s" else ""} \
      ~{if (unlink_entry_remove) then "-u" else ""} \
      ~{if (print_version_info) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort_index_file: "sort index file"
    unlink_entry_remove: "unlink entry (remove from index only)"
    print_version_info: "print version and other info then exit"
  }
  output {
    File out_stdout = stdout()
  }
}