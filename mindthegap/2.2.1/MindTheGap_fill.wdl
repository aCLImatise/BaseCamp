version 1.0

task MindTheGapFill {
  input {
    Boolean? in
    Boolean? graph
    Boolean? contig
    Boolean? bk_pt
    Boolean? out
    Boolean? overlap
    Boolean? filter
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? max_nodes
    Boolean? max_length
    Boolean? nb_cores
    Boolean? max_disk
    Boolean? max_memory
    Boolean? verbose
  }
  command <<<
    MindTheGap fill \
      ~{true="-in" false="" in} \
      ~{true="-graph" false="" graph} \
      ~{true="-contig" false="" contig} \
      ~{true="-bkpt" false="" bk_pt} \
      ~{true="-out" false="" out} \
      ~{true="-overlap" false="" overlap} \
      ~{true="-filter" false="" filter} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-max-nodes" false="" max_nodes} \
      ~{true="-max-length" false="" max_length} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-max-disk" false="" max_disk} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    in: "(1 arg) :    input read file(s)  [default '']"
    graph: "(1 arg) :    input graph file (likely a hdf5 file)  [default '']"
    contig: "(1 arg) :    contig file  [default '']"
    bk_pt: "(1 arg) :    breakpoint file  [default '']"
    out: "(1 arg) :    prefix for output files  [default '']"
    overlap: "(1 arg) :    Overlap between input contigs (default, ie. 0 = kmer size)  [default '0']"
    filter: "(0 arg) :    do not output low quality insertions"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    minimal abundance threshold for solid kmers  [default 'auto']"
    abundance_max: "(1 arg) :    maximal abundance threshold for solid kmers  [default '2147483647']"
    max_nodes: "(1 arg) :    maximum number of nodes in contig graph (nt)  [default '100']"
    max_length: "(1 arg) :    maximum length of insertions (nt)  [default '10000']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    max_disk: "(1 arg) :    max disk for graph building   (in MBytes)  [default '0']"
    max_memory: "(1 arg) :    max memory for graph building (in MBytes)  [default '2000']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
}