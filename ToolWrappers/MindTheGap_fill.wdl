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
      ~{if (in) then "-in" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (contig) then "-contig" else ""} \
      ~{if (bk_pt) then "-bkpt" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (max_nodes) then "-max-nodes" else ""} \
      ~{if (max_length) then "-max-length" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (max_disk) then "-max-disk" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (verbose) then "-verbose" else ""}
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
  output {
    File out_stdout = stdout()
  }
}