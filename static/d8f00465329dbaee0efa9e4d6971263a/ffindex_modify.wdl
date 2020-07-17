version 1.0

task FfindexModify {
  input {
    File? file_line_containing
    Boolean? sort_index_file
    Boolean? unlink_entry_remove
    Boolean? print_version_info
  }
  command <<<
    ffindex_modify \
      ~{if defined(file_line_containing) then ("-f " +  '"' + file_line_containing + '"') else ""} \
      ~{true="-s" false="" sort_index_file} \
      ~{true="-u" false="" unlink_entry_remove} \
      ~{true="-v" false="" print_version_info}
  >>>
  parameter_meta {
    file_line_containing: "file each line containing a filename -f can be specified up to 4096 times"
    sort_index_file: "sort index file"
    unlink_entry_remove: "unlink entry (remove from index only)"
    print_version_info: "print version and other info then exit"
  }
}