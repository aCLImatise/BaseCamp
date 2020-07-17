version 1.0

task Dbgh5 {
  input {
    Boolean? no_mph_f
    Boolean? in
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? abundance_min_threshold
    Boolean? histo_max
    Boolean? solidity_kind
    Boolean? solidity_custom
    Boolean? max_memory
    Boolean? max_disk
    Boolean? solid_km_ers_out
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
    Boolean? nb_cores
    Boolean? all_abundance_counts
    Boolean? edge_km
    Boolean? verbose
    Boolean? integer_precision
    Boolean? email
    Boolean? email_fmt
    Boolean? check
    Boolean? check_dump
    Boolean? nb_glue_partitions
  }
  command <<<
    dbgh5 \
      ~{true="-no-mphf" false="" no_mph_f} \
      ~{true="-in" false="" in} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-abundance-min-threshold" false="" abundance_min_threshold} \
      ~{true="-histo-max" false="" histo_max} \
      ~{true="-solidity-kind" false="" solidity_kind} \
      ~{true="-solidity-custom" false="" solidity_custom} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-max-disk" false="" max_disk} \
      ~{true="-solid-kmers-out" false="" solid_km_ers_out} \
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
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-all-abundance-counts" false="" all_abundance_counts} \
      ~{true="-edge-km" false="" edge_km} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-integer-precision" false="" integer_precision} \
      ~{true="-email" false="" email} \
      ~{true="-email-fmt" false="" email_fmt} \
      ~{true="-check" false="" check} \
      ~{true="-check-dump" false="" check_dump} \
      ~{true="-nb-glue-partitions" false="" nb_glue_partitions}
  >>>
  parameter_meta {
    no_mph_f: "(0 arg) :    don't construct the MPHF"
    in: "(1 arg) :    reads file"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
    abundance_max: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
    abundance_min_threshold: "(1 arg) :    min abundance hard threshold (only used when min abundance is \"auto\")  [default '2']"
    histo_max: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
    solidity_kind: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all, custom)  [default 'sum']"
    solidity_custom: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer must be present  [default '']"
    max_memory: "(1 arg) :    max memory (in MBytes)  [default '5000']"
    max_disk: "(1 arg) :    max disk   (in MBytes)  [default '0']"
    solid_km_ers_out: "(1 arg) :    output file for solid kmers (only when constructing a graph)  [default '']"
    out: "(1 arg) :    output file  [default '']"
    out_dir: "(1 arg) :    output directory  [default '.']"
    out_tmp: "(1 arg) :    output directory for temporary files  [default '.']"
    out_compress: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
    storage_type: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
    histo_two_d: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining files = reads)  [default '0']"
    histo: "(1 arg) :    output the kmer abundance histogram  [default '0']"
    minimizer_type: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
    minimizer_size: "(1 arg) :    size of a minimizer  [default '10']"
    repartition_type: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
    bloom: "(1 arg) :    bloom type ('basic', 'cache', 'neighbor')  [default 'neighbor']"
    de_bloom: "(1 arg) :    debloom type ('none', 'original' or 'cascading')  [default 'cascading']"
    de_bloom_impl: "(1 arg) :    debloom impl ('basic', 'minimizer')  [default 'minimizer']"
    branching_nodes: "(1 arg) :    branching type ('none' or 'stored')  [default 'stored']"
    topology_stats: "(1 arg) :    topological information level (0 for none)  [default '0']"
    config_only: "(0 arg) :    dump config only"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    all_abundance_counts: "(0 arg) :    output all k-mer abundance counts instead of mean"
    edge_km: "(1 arg) :    edge km representation  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    integer_precision: "(1 arg) :    integers precision (0 for optimized value)  [default '0']"
    email: "(1 arg) :    send statistics to the given email address  [default '']"
    email_fmt: "(1 arg) :    'raw' or 'xml'  [default 'raw']"
    check: "(1 arg) :    check result with previous result  [default '']"
    check_dump: "(1 arg) :    dump some properties of the created graph into a file  [default '']"
    nb_glue_partitions: "(1 arg) :    number of glue partitions (automatically calculated by default)  [default '0']"
  }
}