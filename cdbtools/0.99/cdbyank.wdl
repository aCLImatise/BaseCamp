version 1.0

task Cdbyank {
  input {
    String? number_records_indexed
    String? keys_stored_indexfile
    String? indexing_summary_info
    String? d
    String index_file
  }
  command <<<
    cdbyank \
      ~{index_file} \
      ~{if defined(number_records_indexed) then ("-n " +  '"' + number_records_indexed + '"') else ""} \
      ~{if defined(keys_stored_indexfile) then ("-l " +  '"' + keys_stored_indexfile + '"') else ""} \
      ~{if defined(indexing_summary_info) then ("-s " +  '"' + indexing_summary_info + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    number_records_indexed: "the number of records indexed"
    keys_stored_indexfile: "all keys stored in <index_file>"
    indexing_summary_info: "indexing summary info"
    d: ""
    index_file: ""
  }
}