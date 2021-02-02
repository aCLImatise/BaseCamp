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
      ~{if (in) then "-in" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (solidity_kind) then "-solidity-kind" else ""} \
      ~{if (max_disk) then "-max-disk" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (max_sim) then "-max-sim" else ""} \
      ~{if (repeat) then "-repeat" else ""} \
      ~{if (lct) then "-lct" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""}
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
  output {
    File out_stdout = stdout()
  }
}