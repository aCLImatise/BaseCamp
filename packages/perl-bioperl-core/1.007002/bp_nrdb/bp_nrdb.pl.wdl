version 1.0

task BpNrdbpl {
  input {
    File? filename_db_written
    File? filename_append_db
    Boolean? minimum_required_sequence
    Boolean? _check_duplicates
    Boolean? max_number_report
    Boolean? delimiter_use_consecutive
    Boolean? use_database_i
  }
  command <<<
    bp_nrdb_pl \
      ~{if defined(filename_db_written) then ("-o " +  '"' + filename_db_written + '"') else ""} \
      ~{if defined(filename_append_db) then ("-a " +  '"' + filename_append_db + '"') else ""} \
      ~{if (minimum_required_sequence) then "-l" else ""} \
      ~{if (_check_duplicates) then "-i" else ""} \
      ~{if (max_number_report) then "-n" else ""} \
      ~{if (delimiter_use_consecutive) then "-d" else ""} \
      ~{if (use_database_i) then "-p" else ""}
  >>>
  parameter_meta {
    filename_db_written: "- the filename the db is written (STDOUT by default)"
    filename_append_db: "- the filename to append the db to"
    minimum_required_sequence: "#                  - minimum required sequence length"
    _check_duplicates: "- do not check for duplicates"
    max_number_report: "#                  - max number of descriptions to report per seq"
    delimiter_use_consecutive: "#                  - delimiter to use between consecutive descriptions"
    use_database_i: "- use database id prefixes from command line"
  }
  output {
    File out_stdout = stdout()
  }
}