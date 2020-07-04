version 1.0

task RNAdos {
  input {
    Boolean? detailed_help
    Boolean? verbose
    String? sequence
    Int? max_energy
    Int? num_threads
    String? temp
    Int? dangles
    String? param_file
    Int? hashtable_bits
  }
  command <<<
    RNAdos \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(max_energy) then ("--max-energy " +  '"' + max_energy + '"') else ""} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(hashtable_bits) then ("--hashtable-bits " +  '"' + hashtable_bits + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    verbose: "Be verbose. (default=off)"
    sequence: "The RNA sequence (ACGU)"
    max_energy: "Structures are only counted until this threshold is reached. Default is 0 kcal/mol. (default=`0')"
    num_threads: "Set the number of threads used for calculations (only available when compiled with OpenMP support)"
    temp: "Rescale energy parameters to a temperature of temp C. Default is 37C."
    dangles: "How to treat \"dangling end\" energies for bases adjacent to helices in free ends and multi-loops (default=`2')"
    param_file: "Read energy parameters from paramfile, instead of using the default parameter set."
    hashtable_bits: "Set the size of the hash table for each cell in the dp-matrices. (default=`20')"
  }
}