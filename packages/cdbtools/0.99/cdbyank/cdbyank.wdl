version 1.0

task Cdbyank {
  input {
    String? sequence_name_accession
    File? fasta_file_pull
    File? records_found_written
    String? retrieval_multiple_records
    String? insensitive_query_expects
    String? query_key_surrounded
    String? q_use_char
    String? warnings_sent_found
    String? only_defline_record
    File? displays_file_offset
    String? range_extraction_expects
    File? entire_file_dbfastacdbzassumes
    Int? version_number_exit
    Int? number_records_indexed
    String? keys_stored_indexfile
    String? indexing_summary_info
    String index_file
  }
  command <<<
    cdbyank \
      ~{index_file} \
      ~{if defined(sequence_name_accession) then ("-a " +  '"' + sequence_name_accession + '"') else ""} \
      ~{if defined(fasta_file_pull) then ("-d " +  '"' + fasta_file_pull + '"') else ""} \
      ~{if defined(records_found_written) then ("-o " +  '"' + records_found_written + '"') else ""} \
      ~{if defined(retrieval_multiple_records) then ("-x " +  '"' + retrieval_multiple_records + '"') else ""} \
      ~{if defined(insensitive_query_expects) then ("-i " +  '"' + insensitive_query_expects + '"') else ""} \
      ~{if defined(query_key_surrounded) then ("-Q " +  '"' + query_key_surrounded + '"') else ""} \
      ~{if defined(q_use_char) then ("-q " +  '"' + q_use_char + '"') else ""} \
      ~{if defined(warnings_sent_found) then ("-w " +  '"' + warnings_sent_found + '"') else ""} \
      ~{if defined(only_defline_record) then ("-F " +  '"' + only_defline_record + '"') else ""} \
      ~{if defined(displays_file_offset) then ("-P " +  '"' + displays_file_offset + '"') else ""} \
      ~{if defined(range_extraction_expects) then ("-R " +  '"' + range_extraction_expects + '"') else ""} \
      ~{if defined(entire_file_dbfastacdbzassumes) then ("-z " +  '"' + entire_file_dbfastacdbzassumes + '"') else ""} \
      ~{if defined(version_number_exit) then ("-v " +  '"' + version_number_exit + '"') else ""} \
      ~{if defined(number_records_indexed) then ("-n " +  '"' + number_records_indexed + '"') else ""} \
      ~{if defined(keys_stored_indexfile) then ("-l " +  '"' + keys_stored_indexfile + '"') else ""} \
      ~{if defined(indexing_summary_info) then ("-s " +  '"' + indexing_summary_info + '"') else ""}
  >>>
  parameter_meta {
    sequence_name_accession: "the sequence name (accession) for a fasta record to be\\nretrieved; if not given, a list of accessions is expected\\nat stdin"
    fasta_file_pull: "is the fasta file to pull records from;\\nif not specified, cdbyank will look in the same directory\\nwhere <index_file> resides, for a file with the same name\\nbut without the \\\".cidx\\\" suffix"
    records_found_written: "records found are written to file <outfile> instead of stdout"
    retrieval_multiple_records: "retrieval of multiple records per key, if the indexed\\ndatabase had records with the same key (non-unique keys);\\n(without -x only one record for a given key is retrieved)"
    insensitive_query_expects: "insensitive query (expects the <index_file> to have been\\ncreated with cdbfasta -i option)"
    query_key_surrounded: "the query key surrounded by character '%' before the\\ncorresponding record"
    q_use_char: "as -Q but use character <char> instead of '%'"
    warnings_sent_found: "warnings (sent to stderr) when a key is not found"
    only_defline_record: "only the defline for each record (discard the sequence)"
    displays_file_offset: "displays the position(s) (file offset) within the\\ndatabase file, for the requested record(s)"
    range_extraction_expects: "range extraction: expects the input <key(s)> to have\\nthe format: '<seq_name> <start> <end>'\\nand pulls only the specified sequence range"
    entire_file_dbfastacdbzassumes: "the entire file <dbfasta.cdbz>\\n(assumes it was built using cdbfasta with '-z' option)"
    version_number_exit: "version number and exit"
    number_records_indexed: "the number of records indexed"
    keys_stored_indexfile: "all keys stored in <index_file>"
    indexing_summary_info: "indexing summary info"
    index_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}