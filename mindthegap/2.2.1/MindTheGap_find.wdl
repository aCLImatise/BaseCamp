version 1.0

task MindTheGapFind {
  input {
    Boolean? in
    Boolean? graph
    Boolean? ref
    Boolean? bed
    Boolean? out_tmp
    Boolean? out
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? homo_only
    Boolean? max_rep
    Boolean? het_max_occ
    Boolean? insert_only
    Boolean? nb_cores
    Boolean? max_disk
    Boolean? max_memory
    Boolean? verbose
  }
  command <<<
    MindTheGap find \
      ~{true="-in" false="" in} \
      ~{true="-graph" false="" graph} \
      ~{true="-ref" false="" ref} \
      ~{true="-bed" false="" bed} \
      ~{true="-out-tmp" false="" out_tmp} \
      ~{true="-out" false="" out} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-homo-only" false="" homo_only} \
      ~{true="-max-rep" false="" max_rep} \
      ~{true="-het-max-occ" false="" het_max_occ} \
      ~{true="-insert-only" false="" insert_only} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-max-disk" false="" max_disk} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    in: "(1 arg) :    input read file(s)  [default '']"
    graph: "(1 arg) :    input graph file (likely a hdf5 file)  [default '']"
    ref: "(1 arg) :    reference genome file"
    bed: "(1 arg) :    bed file to restrict breakpoint search in specific regions  [default '']"
    out_tmp: "(1 arg) :    prefix for output temporary files  [default '.']"
    out: "(1 arg) :    prefix for output files  [default '']"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    minimal abundance threshold for solid kmers  [default 'auto']"
    abundance_max: "(1 arg) :    maximal abundance threshold for solid kmers  [default '2147483647']"
    homo_only: "(0 arg) :    search only homozygous breakpoints"
    max_rep: "(1 arg) :    maximal repeat size detected for fuzzy sites  [default '5']"
    het_max_occ: "(1 arg) :    maximal number of occurrences of a kmer in the reference genome allowed for heterozyguous breakpoints  [default '1']"
    insert_only: "(0 arg) :    search only insertion breakpoints (do not report other variants)"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    max_disk: "(1 arg) :    max disk for graph building (in MBytes)  [default '0']"
    max_memory: "(1 arg) :    max memory for graph building (in MBytes)  [default '2000']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
}