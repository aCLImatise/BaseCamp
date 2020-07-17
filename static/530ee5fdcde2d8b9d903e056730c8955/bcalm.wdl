version 1.0

task Bcalm {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
    Boolean? no_mph_f
    Boolean? in
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? solidity_custom
    Boolean? max_memory
    Boolean? max_disk
    Boolean? out
    Boolean? out_dir
    Boolean? out_tmp
    Boolean? out_compress
    Boolean? storage_type
    Boolean? histo_two_d
    Boolean? histo
    Boolean? minimizer_type
    Boolean? minimizer_size
    Boolean? repartition_type
    Boolean? bloom
    Boolean? de_bloom
    Boolean? de_bloom_impl
    Boolean? branching_nodes
    Boolean? topology_stats
    Boolean? config_only
    Boolean? all_abundance_counts
    Boolean? edge_km
    Boolean? integer_precision
    Boolean? nb_glue_partitions
  }
  command <<<
    bcalm \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version} \
      ~{true="-no-mphf" false="" no_mph_f} \
      ~{true="-in" false="" in} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-solidity-custom" false="" solidity_custom} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-max-disk" false="" max_disk} \
      ~{true="-out" false="" out} \
      ~{true="-out-dir" false="" out_dir} \
      ~{true="-out-tmp" false="" out_tmp} \
      ~{true="-out-compress" false="" out_compress} \
      ~{true="-storage-type" false="" storage_type} \
      ~{true="-histo2D" false="" histo_two_d} \
      ~{true="-histo" false="" histo} \
      ~{true="-minimizer-type" false="" minimizer_type} \
      ~{true="-minimizer-size" false="" minimizer_size} \
      ~{true="-repartition-type" false="" repartition_type} \
      ~{true="-bloom" false="" bloom} \
      ~{true="-debloom" false="" de_bloom} \
      ~{true="-debloom-impl" false="" de_bloom_impl} \
      ~{true="-branching-nodes" false="" branching_nodes} \
      ~{true="-topology-stats" false="" topology_stats} \
      ~{true="-config-only" false="" config_only} \
      ~{true="-all-abundance-counts" false="" all_abundance_counts} \
      ~{true="-edge-km" false="" edge_km} \
      ~{true="-integer-precision" false="" integer_precision} \
      ~{true="-nb-glue-partitions" false="" nb_glue_partitions}
  >>>
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    no_mph_f: "(0 arg) :    don't construct the MPHF"
    in: "(1 arg) :    reads file  [default '']"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
    abundance_max: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
    solidity_custom: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer must be present  [default '']"
    max_memory: "(1 arg) :    max memory (in MBytes)  [default '5000']"
    max_disk: "(1 arg) :    max disk   (in MBytes)  [default '0']"
    out: "(1 arg) :    output file  [default '']"
    out_dir: "(1 arg) :    output directory  [default '.']"
    out_tmp: "(1 arg) :    output directory for temporary files  [default '.']"
    out_compress: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
    storage_type: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
    histo_two_d: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining files = reads)  [default '0']"
    histo: "(1 arg) :    output the kmer abundance histogram  [default '0']"
    minimizer_type: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '1']"
    minimizer_size: "(1 arg) :    size of a minimizer  [default '10']"
    repartition_type: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '1']"
    bloom: "(1 arg) :    bloom type ('basic', 'cache', 'neighbor')  [default 'neighbor']"
    de_bloom: "(1 arg) :    debloom type ('none', 'original' or 'cascading')  [default 'cascading']"
    de_bloom_impl: "(1 arg) :    debloom impl ('basic', 'minimizer')  [default 'minimizer']"
    branching_nodes: "(1 arg) :    branching type ('none' or 'stored')  [default 'stored']"
    topology_stats: "(1 arg) :    topological information level (0 for none)  [default '0']"
    config_only: "(0 arg) :    dump config only"
    all_abundance_counts: "(0 arg) :    output all k-mer abundance counts instead of mean"
    edge_km: "(1 arg) :    edge km representation  [default '0']"
    integer_precision: "(1 arg) :    integers precision (0 for optimized value)  [default '0']"
    nb_glue_partitions: "(1 arg) :    number of glue partitions (automatically calculated by default)  [default '0']"
  }
}