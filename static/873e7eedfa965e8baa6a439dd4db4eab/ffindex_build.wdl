version 1.0

task FfindexBuild {
  input {
    Boolean? append_filesindexes_also
    String? second_ffindex_data
    String? second_ffindex_index
    File? file_containing_list
    Boolean? sort_index_file
    Boolean? print_version_info
  }
  command <<<
    ffindex_build \
      ~{true="-a" false="" append_filesindexes_also} \
      ~{if defined(second_ffindex_data) then ("-d " +  '"' + second_ffindex_data + '"') else ""} \
      ~{if defined(second_ffindex_index) then ("-i " +  '"' + second_ffindex_index + '"') else ""} \
      ~{if defined(file_containing_list) then ("-f " +  '"' + file_containing_list + '"') else ""} \
      ~{true="-s" false="" sort_index_file} \
      ~{true="-v" false="" print_version_info}
  >>>
  parameter_meta {
    append_filesindexes_also: "append files/indexes, also needed for sorting an already existing ffindex"
    second_ffindex_data: "a second ffindex data file for inserting/appending"
    second_ffindex_index: "a second ffindex index file for inserting/appending"
    file_containing_list: "file containing a list of file names, one per line -f can be specified up to 4096 times"
    sort_index_file: "sort index file, so that the index can queried. Another append operations can be done without sorting."
    print_version_info: "print version and other info then exit"
  }
}