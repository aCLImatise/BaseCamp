version 1.0

task BpNrdb.pl {
  input {
    File? filename_db_written
    File? filename_append_db
    Boolean? minimum_required_sequence
    Boolean? _check_duplicates
    Boolean? max_number_descriptions
    Boolean? delimiter_use_consecutive
    Boolean? use_database_i
    File file_one
    File file_two
    File file_three
  }
  command <<<
    bp_nrdb.pl \
      ~{file_one} \
      ~{file_two} \
      ~{file_three} \
      ~{if defined(filename_db_written) then ("-o " +  '"' + filename_db_written + '"') else ""} \
      ~{if defined(filename_append_db) then ("-a " +  '"' + filename_append_db + '"') else ""} \
      ~{true="-l" false="" minimum_required_sequence} \
      ~{true="-i" false="" _check_duplicates} \
      ~{true="-n" false="" max_number_descriptions} \
      ~{true="-d" false="" delimiter_use_consecutive} \
      ~{true="-p" false="" use_database_i}
  >>>
  parameter_meta {
    filename_db_written: "- the filename the db is written (STDOUT by default)"
    filename_append_db: "- the filename to append the db to"
    minimum_required_sequence: "#                  - minimum required sequence length"
    _check_duplicates: "- do not check for duplicates"
    max_number_descriptions: "#                  - max number of descriptions to report per seq"
    delimiter_use_consecutive: "#                  - delimiter to use between consecutive descriptions"
    use_database_i: "- use database id prefixes from command line"
    file_one: ""
    file_two: ""
    file_three: ""
  }
}