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
    File? out
    Directory? out_dir
    Directory? out_tmp
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
    Boolean? redo_b_calm
    Boolean? skip_b_calm
    Boolean? redo_b_glue
    Boolean? skip_b_glue
    Boolean? redo_links
    Boolean? skip_links
    Boolean? nb_glue_partitions
  }
  command <<<
    bcalm \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (no_mph_f) then "-no-mphf" else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (solidity_custom) then "-solidity-custom" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (max_disk) then "-max-disk" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (out_dir) then "-out-dir" else ""} \
      ~{if (out_tmp) then "-out-tmp" else ""} \
      ~{if (out_compress) then "-out-compress" else ""} \
      ~{if (storage_type) then "-storage-type" else ""} \
      ~{if (histo_two_d) then "-histo2D" else ""} \
      ~{if (histo) then "-histo" else ""} \
      ~{if (minimizer_type) then "-minimizer-type" else ""} \
      ~{if (minimizer_size) then "-minimizer-size" else ""} \
      ~{if (repartition_type) then "-repartition-type" else ""} \
      ~{if (bloom) then "-bloom" else ""} \
      ~{if (de_bloom) then "-debloom" else ""} \
      ~{if (de_bloom_impl) then "-debloom-impl" else ""} \
      ~{if (branching_nodes) then "-branching-nodes" else ""} \
      ~{if (topology_stats) then "-topology-stats" else ""} \
      ~{if (config_only) then "-config-only" else ""} \
      ~{if (all_abundance_counts) then "-all-abundance-counts" else ""} \
      ~{if (edge_km) then "-edge-km" else ""} \
      ~{if (integer_precision) then "-integer-precision" else ""} \
      ~{if (redo_b_calm) then "-redo-bcalm" else ""} \
      ~{if (skip_b_calm) then "-skip-bcalm" else ""} \
      ~{if (redo_b_glue) then "-redo-bglue" else ""} \
      ~{if (skip_b_glue) then "-skip-bglue" else ""} \
      ~{if (redo_links) then "-redo-links" else ""} \
      ~{if (skip_links) then "-skip-links" else ""} \
      ~{if (nb_glue_partitions) then "-nb-glue-partitions" else ""}
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
    redo_b_calm: "(0 arg) :    debug function, redo the bcalm algo"
    skip_b_calm: "(0 arg) :    same, but       skip     bcalm"
    redo_b_glue: "(0 arg) :    same, but       redo     bglue (needs debug_keep_glue_files=true in source code)"
    skip_b_glue: "(0 arg) :    same, but       skip     bglue"
    redo_links: "(0 arg) :    same, but       redo     links"
    skip_links: "(0 arg) :    same, but       skip     links"
    nb_glue_partitions: "(1 arg) :    number of glue partitions (automatically calculated by default)  [default '0']"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    Directory out_out_dir = "${in_out_dir}"
    Directory out_out_tmp = "${in_out_tmp}"
  }
}