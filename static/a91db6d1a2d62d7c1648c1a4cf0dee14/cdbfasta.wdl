version 1.0

task Cdbfasta {
  input {
    File? index_file_named
    String? string_characters_beginning
    Int? input_fastq_format
    File? compressed_file_be
    String? extraneous_characters_space
    Boolean? option_create_entries
    Int? same_m_takes
    String? space_delimited_fields
    File? exclude_indexing_m
    String? case_insensitive_indexing
    Int? deflines_format_dbaccessiondbaccession
    Int? also_subsequent_dbaccession
    String? mode_indexes_part
    String? accessions_constructs_used
    String? program_version_exit
    String invalid
    String fast_a_file
    String argument
  }
  command <<<
    cdbfasta \
      ~{invalid} \
      ~{fast_a_file} \
      ~{argument} \
      ~{if defined(index_file_named) then ("-o " +  '"' + index_file_named + '"') else ""} \
      ~{if defined(string_characters_beginning) then ("-r " +  '"' + string_characters_beginning + '"') else ""} \
      ~{if defined(input_fastq_format) then ("-Q " +  '"' + input_fastq_format + '"') else ""} \
      ~{if defined(compressed_file_be) then ("-z " +  '"' + compressed_file_be + '"') else ""} \
      ~{if defined(extraneous_characters_space) then ("-s " +  '"' + extraneous_characters_space + '"') else ""} \
      ~{if (option_create_entries) then "-m" else ""} \
      ~{if defined(same_m_takes) then ("-n " +  '"' + same_m_takes + '"') else ""} \
      ~{if defined(space_delimited_fields) then ("-f " +  '"' + space_delimited_fields + '"') else ""} \
      ~{if defined(exclude_indexing_m) then ("-w " +  '"' + exclude_indexing_m + '"') else ""} \
      ~{if defined(case_insensitive_indexing) then ("-i " +  '"' + case_insensitive_indexing + '"') else ""} \
      ~{if defined(deflines_format_dbaccessiondbaccession) then ("-c " +  '"' + deflines_format_dbaccessiondbaccession + '"') else ""} \
      ~{if defined(also_subsequent_dbaccession) then ("-C " +  '"' + also_subsequent_dbaccession + '"') else ""} \
      ~{if defined(mode_indexes_part) then ("-a " +  '"' + mode_indexes_part + '"') else ""} \
      ~{if defined(accessions_constructs_used) then ("-A " +  '"' + accessions_constructs_used + '"') else ""} \
      ~{if defined(program_version_exit) then ("-v " +  '"' + program_version_exit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_file_named: "index file will be named <index_file>; if not given,\\nthe index filename is database name plus the suffix '.cidx'"
    string_characters_beginning: "a string of characters at the beginning of line\\nmarking the start of a record (default: '>')"
    input_fastq_format: "input as fastq format, i.e. with '@' as record delimiter\\nand with records expected to have at least 4 lines"
    compressed_file_be: "is compressed into the file <compressed_db>\\nbefore indexing (<fastafile> can be \\\"-\\\" or \\\"stdin\\\"\\nin order to get the input records from stdin)"
    extraneous_characters_space: "extraneous characters from *around* the space delimited\\ntokens, for the multikey options below (-m,-n,-f);\\nDefault <stripendchars> set is: '\\\",`.(){}/[]!:;~|><+-"
    option_create_entries: "(\\\"multi-key\\\" option) create hash entries pointing to\\nthe same record for all tokens found in\\nthe defline"
    same_m_takes: "same as -m, but only takes the first <numkeys>\\ntokens from the defline"
    space_delimited_fields: "*space* delimited tokens (fields) in the defline as given\\nby LIST of fields or fields ranges (the same syntax as UNIX 'cut')"
    exclude_indexing_m: "exclude from indexing all the words found\\nin the file <stopwordslist> (for options -m, -n and -k)"
    case_insensitive_indexing: "case insensitive indexing (i.e. create additional keys for\\nall-lowercase tokens used for indexing from the defline"
    deflines_format_dbaccessiondbaccession: "deflines in the format: db1|accession1|db2|accession2|...,\\nonly the first db-accession pair ('db1|accession1') is taken as key"
    also_subsequent_dbaccession: ", but also subsequent db|accession constructs are indexed,\\nalong with the full (default) token; additionally,\\nall nrdb concatenated accessions found in the defline\\nare parsed and stored (assuming 0x01 or '^|^' as separators)"
    mode_indexes_part: "mode: like -C option, but indexes the 'accession'\\npart for all 'db|accession' constructs found"
    accessions_constructs_used: "(both accessions and 'db|accession'\\nconstructs are used as keys"
    program_version_exit: "program version and exit"
    invalid: ""
    fast_a_file: ""
    argument: ""
  }
  output {
    File out_stdout = stdout()
  }
}