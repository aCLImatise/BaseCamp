version 1.0

task Minia {
  input {
    Boolean? in
    Boolean? keep_isolated
    Boolean? traversal
    Boolean? fast_a_line
    Boolean? no_bulge_removal
    Boolean? no_tip_removal
    Boolean? no_ec_removal
    Boolean? tip_len_topo_k_mult
    Boolean? tip_len_rctc_k_mult
    Boolean? tip_rctc_cut_off
    Boolean? bulge_len_k_mult
    Boolean? bulge_len_k_add
    Boolean? bulge_alt_path_k_add
    Boolean? bulge_alt_path_cov_mult
    Boolean? ec_len_k_mult
    Boolean? ec_rctc_cut_off
    Boolean? no_mph_f
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? abundance_min_threshold
    Boolean? histo_max
    Boolean? solidity_kind
    Boolean? solidity_custom
    Boolean? max_memory
    Boolean? max_disk
    File? solid_km_ers_out
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
    Boolean? nb_cores
    Boolean? all_abundance_counts
    Boolean? edge_km
    Boolean? verbose
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
    minia \
      ~{if (in) then "-in" else ""} \
      ~{if (keep_isolated) then "-keep-isolated" else ""} \
      ~{if (traversal) then "-traversal" else ""} \
      ~{if (fast_a_line) then "-fasta-line" else ""} \
      ~{if (no_bulge_removal) then "-no-bulge-removal" else ""} \
      ~{if (no_tip_removal) then "-no-tip-removal" else ""} \
      ~{if (no_ec_removal) then "-no-ec-removal" else ""} \
      ~{if (tip_len_topo_k_mult) then "-tip-len-topo-kmult" else ""} \
      ~{if (tip_len_rctc_k_mult) then "-tip-len-rctc-kmult" else ""} \
      ~{if (tip_rctc_cut_off) then "-tip-rctc-cutoff" else ""} \
      ~{if (bulge_len_k_mult) then "-bulge-len-kmult" else ""} \
      ~{if (bulge_len_k_add) then "-bulge-len-kadd" else ""} \
      ~{if (bulge_alt_path_k_add) then "-bulge-altpath-kadd" else ""} \
      ~{if (bulge_alt_path_cov_mult) then "-bulge-altpath-covmult" else ""} \
      ~{if (ec_len_k_mult) then "-ec-len-kmult" else ""} \
      ~{if (ec_rctc_cut_off) then "-ec-rctc-cutoff" else ""} \
      ~{if (no_mph_f) then "-no-mphf" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (abundance_min_threshold) then "-abundance-min-threshold" else ""} \
      ~{if (histo_max) then "-histo-max" else ""} \
      ~{if (solidity_kind) then "-solidity-kind" else ""} \
      ~{if (solidity_custom) then "-solidity-custom" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (max_disk) then "-max-disk" else ""} \
      ~{if (solid_km_ers_out) then "-solid-kmers-out" else ""} \
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
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (all_abundance_counts) then "-all-abundance-counts" else ""} \
      ~{if (edge_km) then "-edge-km" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
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
    in: "(1 arg) :    input reads (fasta/fastq/compressed) or hdf5 file  [default '']"
    keep_isolated: "(0 arg) :    keep short (<= max(2k, 150 bp)) isolated output sequences"
    traversal: "(1 arg) :    traversal type ('contig', 'unitig')  [default 'contig']"
    fast_a_line: "(1 arg) :    number of nucleotides per line in fasta output (0 means one line)  [default '0']"
    no_bulge_removal: "(0 arg) :    ask to not perform bulge removal"
    no_tip_removal: "(0 arg) :    ask to not perform tip removal"
    no_ec_removal: "(0 arg) :    ask to not perform erroneous connection removal"
    tip_len_topo_k_mult: "(1 arg) :    remove all tips of length <= k * X bp  [default '2.500000']"
    tip_len_rctc_k_mult: "(1 arg) :    remove tips that pass coverage criteria, of length <= k * X bp  [default '10.000000']"
    tip_rctc_cut_off: "(1 arg) :    tip relative coverage coefficient: mean coverage of neighbors >  X * tip coverage  [default '2.000000']"
    bulge_len_k_mult: "(1 arg) :    bulges shorter than k*X bp are candidate to be removed  [default '3.000000']"
    bulge_len_k_add: "(1 arg) :    bulges shorter than k+X bp are candidate to be removed  [default '100']"
    bulge_alt_path_k_add: "(1 arg) :    explore up to k+X nodes to find alternative path  [default '50']"
    bulge_alt_path_cov_mult: "(1 arg) :    bulges of coverage <= X*cov_altpath will be removed  [default '1.100000']"
    ec_len_k_mult: "(1 arg) :    EC shorter than k*X bp are candidates to be removed  [default '9.000000']"
    ec_rctc_cut_off: "(1 arg) :    EC relative coverage coefficient (similar in spirit as tip)  [default '4.000000']"
    no_mph_f: "(0 arg) :    don't construct the MPHF"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
    abundance_max: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
    abundance_min_threshold: "(1 arg) :    min abundance hard threshold (only used when min abundance is \\\"auto\\\")  [default '2']"
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
    File out_solid_km_ers_out = "${in_solid_km_ers_out}"
    File out_out = "${in_out}"
    Directory out_out_dir = "${in_out_dir}"
    Directory out_out_tmp = "${in_out_tmp}"
  }
}