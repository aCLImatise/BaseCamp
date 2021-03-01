version 1.0

task RNAdos {
  input {
    Boolean? detailed_help
    Boolean? verbose
    String? sequence
    Int? max_energy
    Int? num_threads
    Int? temp
    Int? dangles
    File? param_file
    Int? hashtable_bits
  }
  command <<<
    RNAdos \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(max_energy) then ("--max-energy " +  '"' + max_energy + '"') else ""} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(hashtable_bits) then ("--hashtable-bits " +  '"' + hashtable_bits + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    verbose: "Be verbose.\\n(default=off)"
    sequence: "The RNA sequence (ACGU)"
    max_energy: "Structures are only counted until this threshold\\nis reached. Default is 0 kcal/mol.\\n(default=`0')"
    num_threads: "Set the number of threads used for calculations\\n(only available when compiled with OpenMP\\nsupport)"
    temp: "Rescale energy parameters to a temperature of temp\\nC. Default is 37C."
    dangles: "How to treat \\\"dangling end\\\" energies for bases\\nadjacent to helices in free ends and multi-loops\\n(default=`2')"
    param_file: "Read energy parameters from paramfile, instead of\\nusing the default parameter set."
    hashtable_bits: "Set the size of the hash table for each cell in\\nthe dp-matrices.\\n(default=`20')"
  }
  output {
    File out_stdout = stdout()
  }
}