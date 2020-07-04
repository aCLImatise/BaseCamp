version 1.0

task SRCLinkerRam {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
    Boolean? graph
    Boolean? bank
    Boolean? query
    Boolean? out
    Boolean? km_er_threshold
    Boolean? windows_size
    Boolean? gamma
    Boolean? fingerprint_size
    Boolean? core
    Boolean? no_sharing_detail
    Boolean? keep_low_complexity
    Boolean? zero_density_windows_size
    Boolean? zero_density_threshold
  }
  command <<<
    SRC_linker_ram \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version} \
      ~{true="-graph" false="" graph} \
      ~{true="-bank" false="" bank} \
      ~{true="-query" false="" query} \
      ~{true="-out" false="" out} \
      ~{true="-kmer_threshold" false="" km_er_threshold} \
      ~{true="-windows_size" false="" windows_size} \
      ~{true="-gamma" false="" gamma} \
      ~{true="-fingerprint_size" false="" fingerprint_size} \
      ~{true="-core" false="" core} \
      ~{true="-no_sharing_detail" false="" no_sharing_detail} \
      ~{true="-keep_low_complexity" false="" keep_low_complexity} \
      ~{true="-zero_density_windows_size" false="" zero_density_windows_size} \
      ~{true="-zero_density_threshold" false="" zero_density_threshold}
  >>>
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    graph: "(1 arg) :    graph input"
    bank: "(1 arg) :    bank input"
    query: "(1 arg) :    query input"
    out: "(1 arg) :    output_file"
    km_er_threshold: "(1 arg) :    Minimal percentage of shared kmer span for considering 2 reads as similar.  The kmer span is the number of bases from the read query covered by a kmer shared with the target read. If a read of length 80 has a kmer-span of 60 with another read from the bank (of unkonwn size), then the percentage of shared kmer span is 75%. If a least a windows (of size \"windows_size\" contains at least kmer_threshold percent of positionf covered by shared kmers, the read couple is conserved).  [default '75']"
    windows_size: "(1 arg) :    size of the window. If the windows size is zero (default value), then the full read is considered  [default '0']"
    gamma: "(1 arg) :    gamma value  [default '2']"
    fingerprint_size: "(1 arg) :    fingerprint size  [default '8']"
    core: "(1 arg) :    Number of thread(s)  [default '1']"
    no_sharing_detail: "(0 arg) :    Output ids of reads from query input that are shared with at least one read from reference bank input. With this option no information with whom a read is shared is provided, one only knows that a read is shared."
    keep_low_complexity: "(0 arg) :    Conserve low complexity sequences during indexing and querying"
    zero_density_windows_size: "(1 arg) :    If defined (>0): two reads are linked if they DO NOT contain a window of this size, with a percentage of zero higher than \"-zero_density_threshold\". Note: this test is performed over the full read length, not limited to \"-windows_size\"  [default '0']"
    zero_density_threshold: "(1 arg) :    See \"-zero_density_windows_size\"  [default '80']"
  }
}