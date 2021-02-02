version 1.0

task MakeStreamingDNADatabasepy {
  input {
    Int? prime
    Int? threads
    Int? num_hashes
    Int? k_size
    Boolean? verbose
    String in_file
    String out_file
  }
  command <<<
    MakeStreamingDNADatabase_py \
      ~{in_file} \
      ~{out_file} \
      ~{if defined(prime) then ("--prime " +  '"' + prime + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(num_hashes) then ("--num_hashes " +  '"' + num_hashes + '"') else ""} \
      ~{if defined(k_size) then ("--k_size " +  '"' + k_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    prime: "Prime (for modding hashes) (default: 9999999999971)"
    threads: "Number of threads to use (default: 8)"
    num_hashes: "Number of hashes to use. (default: 500)"
    k_size: "k-mer size (default: 21)"
    verbose: "Print out progress report/timing information (default:\\nFalse)\\n"
    in_file: "Input file: file containing (absolute) file names of\\ntraining genomes."
    out_file: "Output training database/reference file (in HDF5\\nformat). An additional file (ending in .tst) will also\\nbe created in the same directory with the same base\\nname."
  }
  output {
    File out_stdout = stdout()
  }
}