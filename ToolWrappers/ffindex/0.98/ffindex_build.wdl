version 1.0

task FfindexBuild {
  input {
    Boolean? append_filesindexes_also
    File? second_ffindex_data
    File? second_ffindex_index
    Boolean? sort_index_file
    Boolean? print_version_info
  }
  command <<<
    ffindex_build \
      ~{if (append_filesindexes_also) then "-a" else ""} \
      ~{if defined(second_ffindex_data) then ("-d " +  '"' + second_ffindex_data + '"') else ""} \
      ~{if defined(second_ffindex_index) then ("-i " +  '"' + second_ffindex_index + '"') else ""} \
      ~{if (sort_index_file) then "-s" else ""} \
      ~{if (print_version_info) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ffindex:0.98--hc9558a2_0"
  }
  parameter_meta {
    append_filesindexes_also: "append files/indexes, also needed for sorting an already existing ffindex"
    second_ffindex_data: "a second ffindex data file for inserting/appending"
    second_ffindex_index: "a second ffindex index file for inserting/appending"
    sort_index_file: "sort index file, so that the index can queried.\\nAnother append operations can be done without sorting."
    print_version_info: "print version and other info then exit"
  }
  output {
    File out_stdout = stdout()
  }
}