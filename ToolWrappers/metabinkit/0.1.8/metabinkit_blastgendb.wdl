version 1.0

task MetabinkitBlastgendb {
  input {
    File? mapping_sequence_d
    String? check_database_creating
    Int? maximum_number_threads
    Boolean? print_version_exit
  }
  command <<<
    metabinkit_blastgendb \
      ~{if defined(mapping_sequence_d) then ("-f " +  '"' + mapping_sequence_d + '"') else ""} \
      ~{if defined(check_database_creating) then ("-o " +  '"' + check_database_creating + '"') else ""} \
      ~{if defined(maximum_number_threads) then ("-t " +  '"' + maximum_number_threads + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapping_sequence_d: "- mapping between the sequence id and the taxid (tab separted). if none is found it will look for taxid=xxxx; in the fasta header after the first space and consider the word up to the first space or | as the sequence id."
    check_database_creating: "- check database after creating it"
    maximum_number_threads: "- maximum number of threads (default:2)"
    print_version_exit: "- print version and exit"
  }
  output {
    File out_stdout = stdout()
  }
}