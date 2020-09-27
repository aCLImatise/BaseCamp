version 1.0

task MetabinkitBlastgendb {
  input {
    File? mapping_sequence_i
  }
  command <<<
    metabinkit_blastgendb \
      ~{if defined(mapping_sequence_i) then ("-f " +  '"' + mapping_sequence_i + '"') else ""}
  >>>
  parameter_meta {
    mapping_sequence_i: "- mapping between the sequence id and the taxid (tab separted). if none is found it will look for taxid=xxxx; in the fasta header after the first space and consider the word up to the first space or | as the sequence id.\\n-o outfile\\n-c                 - check database after creating it\\n-t threads         - maximum number of threads (default:2)\\n-v                 - print version and exit\\n-h                 - provides usage information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}