version 1.0

task TakeABreak {
  input {
    Boolean? in
    Boolean? graph
    Boolean? out
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? solidity_kind
    Boolean? max_disk
    Boolean? max_memory
    Boolean? max_sim
    Boolean? repeat
    Boolean? lct
    Boolean? version
    Boolean? nb_cores
    Boolean? verbose
  }
  command <<<
    TakeABreak \
      ~{true="-in" false="" in} \
      ~{true="-graph" false="" graph} \
      ~{true="-out" false="" out} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-solidity-kind" false="" solidity_kind} \
      ~{true="-max-disk" false="" max_disk} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-max-sim" false="" max_sim} \
      ~{true="-repeat" false="" repeat} \
      ~{true="-lct" false="" lct} \
      ~{true="-version" false="" version} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    in: "(1 arg) :    input read file(s)  [default '']"
    graph: "(1 arg) :    input graph file (likely a hdf5 file)  [default '']"
    out: "(1 arg) :    prefix for output files  [default '']"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    minimal abundance threshold for solid kmers  [default 'auto']"
    abundance_max: "(1 arg) :    maximal abundance threshold for solid kmers  [default '2147483647']"
    solidity_kind: "(1 arg) :    way to consider a solid kmer with several datasets (sum, one, or all)  [default 'one']"
    max_disk: "(1 arg) :    max disk   (in MBytes)  [default '0']"
    max_memory: "(1 arg) :    max memory (in MBytes)  [default '2000']"
    max_sim: "(1 arg) :    max similarity percentage between a and b' and between u and v'  [default '80']"
    repeat: "(1 arg) :    maximal repeat size at the breakpoint (longest common suffix between a and b')  [default '8']"
    lct: "(1 arg) :    local complexity threshold (LCT)  [default '100']"
    version: "(0 arg) :    version"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
}