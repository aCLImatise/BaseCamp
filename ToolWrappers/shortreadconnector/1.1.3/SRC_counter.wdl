version 1.0

task SRCCounter {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
    Boolean? graph
    Boolean? bank
    Boolean? query
    Boolean? out
    Boolean? keep_low_complexity
    Boolean? gamma
    Boolean? fingerprint_size
    Boolean? core
    Boolean? coverage_threshold
    Boolean? windows_size
  }
  command <<<
    SRC_counter \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (bank) then "-bank" else ""} \
      ~{if (query) then "-query" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (keep_low_complexity) then "-keep_low_complexity" else ""} \
      ~{if (gamma) then "-gamma" else ""} \
      ~{if (fingerprint_size) then "-fingerprint_size" else ""} \
      ~{if (core) then "-core" else ""} \
      ~{if (coverage_threshold) then "-coverage_threshold" else ""} \
      ~{if (windows_size) then "-windows_size" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    graph: "(1 arg) :    graph input"
    bank: "(1 arg) :    bank input"
    query: "(1 arg) :    query input"
    out: "(1 arg) :    output_file"
    keep_low_complexity: "(0 arg) :    Conserve low complexity sequences during indexing and querying"
    gamma: "(1 arg) :    gamma value  [default '2']"
    fingerprint_size: "(1 arg) :    fingerprint size  [default '8']"
    core: "(1 arg) :    Number of thread  [default '1']"
    coverage_threshold: "(1 arg) :    Minimal percentage of shared kmer span for considering a query read as similar to a read set.  The kmer span is the number of bases from the read query covered by a kmer shared with the target bank read set. If a read of length 80 has a kmer-span of 60 with the bank, then the percentage of shared kmer span is 75%. If a least a windows (of size \\\"windows_size\\\" contains at least kmer_threshold percent of positionf covered by shared kmers, the read is output in the boolean vector).  [default '50']"
    windows_size: "(1 arg) :    size of the window. If the windows size is zero (default value), then the full read is considered  [default '0']"
  }
  output {
    File out_stdout = stdout()
  }
}