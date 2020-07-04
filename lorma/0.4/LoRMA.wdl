version 1.0

task LoRMA {
  input {
    Boolean? best_friends
    Boolean? friends
    Boolean? arg_kmer_length
    Boolean? discarded
    Boolean? arg_output_corrected
    Boolean? reads
    Boolean? nb_cores
    Boolean? verbose
  }
  command <<<
    LoRMA \
      ~{true="-bestfriends" false="" best_friends} \
      ~{true="-friends" false="" friends} \
      ~{true="-k" false="" arg_kmer_length} \
      ~{true="-discarded" false="" discarded} \
      ~{true="-output" false="" arg_output_corrected} \
      ~{true="-reads" false="" reads} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    best_friends: "(1 arg) :    Number of best friends  [default '3']"
    friends: "(1 arg) :    Number of friends  [default '7']"
    arg_kmer_length: "(1 arg) :    kmer length  [default '31']"
    discarded: "(1 arg) :    output file for discarded reads"
    arg_output_corrected: "(1 arg) :    output file for corrected reads"
    reads: "(1 arg) :    file(s) of long reads"
    nb_cores: "(1 arg) :    number of cores  [default '1']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
}