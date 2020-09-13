version 1.0

task MetabinkitBlastgendb {
  input {
    File? mapping_sequence_i
    String? o
    Boolean? check_database_creating
    Int? maximum_number_threads
    Boolean? print_version_exit
  }
  command <<<
    metabinkit_blastgendb \
      ~{if defined(mapping_sequence_i) then ("-f " +  '"' + mapping_sequence_i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if (check_database_creating) then "-c" else ""} \
      ~{if defined(maximum_number_threads) then ("-t " +  '"' + maximum_number_threads + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""}
  >>>
  parameter_meta {
    mapping_sequence_i: "- mapping between the sequence id and the taxid (tab separted). if none is found it will look for taxid=xxxx; in the fasta header after the first space and consider the word up to the first space or | as the sequence id."
    o: ""
    check_database_creating: "- check database after creating it"
    maximum_number_threads: "- maximum number of threads (default:2)"
    print_version_exit: "- print version and exit"
  }
  output {
    File out_stdout = stdout()
  }
}