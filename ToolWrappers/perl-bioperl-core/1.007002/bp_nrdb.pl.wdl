version 1.0

task BpNrdbpl {
  input {
    File? filename_db_written
    File? _filename_append
    Boolean? minimum_required_sequence
    Boolean? _check_duplicates
    Boolean? max_number_descriptions
    Boolean? delimiter_use_consecutive
    Boolean? use_database_prefixes
  }
  command <<<
    bp_nrdb_pl \
      ~{if defined(filename_db_written) then ("-o " +  '"' + filename_db_written + '"') else ""} \
      ~{if defined(_filename_append) then ("-a " +  '"' + _filename_append + '"') else ""} \
      ~{if (minimum_required_sequence) then "-l" else ""} \
      ~{if (_check_duplicates) then "-i" else ""} \
      ~{if (max_number_descriptions) then "-n" else ""} \
      ~{if (delimiter_use_consecutive) then "-d" else ""} \
      ~{if (use_database_prefixes) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filename_db_written: "- the filename the db is written (STDOUT by default)"
    _filename_append: "- the filename to append the db to"
    minimum_required_sequence: "#                  - minimum required sequence length"
    _check_duplicates: "- do not check for duplicates"
    max_number_descriptions: "#                  - max number of descriptions to report per seq"
    delimiter_use_consecutive: "#                  - delimiter to use between consecutive descriptions"
    use_database_prefixes: "- use database id prefixes from command line"
  }
  output {
    File out_stdout = stdout()
  }
}