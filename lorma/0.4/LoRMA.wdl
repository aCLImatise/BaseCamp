version 1.0

task LoRMA {
  input {
    Boolean? best_friends
    Boolean? friends
    Boolean? arg_kmer_length
    File? discarded
    File? arg_output_corrected
    Boolean? reads
    Boolean? nb_cores
    Boolean? verbose
  }
  command <<<
    LoRMA \
      ~{if (best_friends) then "-bestfriends" else ""} \
      ~{if (friends) then "-friends" else ""} \
      ~{if (arg_kmer_length) then "-k" else ""} \
      ~{if (discarded) then "-discarded" else ""} \
      ~{if (arg_output_corrected) then "-output" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""}
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
  output {
    File out_stdout = stdout()
    File out_discarded = "${in_discarded}"
    File out_arg_output_corrected = "${in_arg_output_corrected}"
  }
}