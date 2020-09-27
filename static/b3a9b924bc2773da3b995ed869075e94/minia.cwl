class: CommandLineTool
id: minia.cwl
inputs:
- id: in_in
  doc: "(1 arg) :    input reads (fasta/fastq/compressed) or hdf5 file  [default '']"
  type: boolean
  inputBinding:
    prefix: -in
- id: in_keep_isolated
  doc: '(0 arg) :    keep short (<= max(2k, 150 bp)) isolated output sequences'
  type: boolean
  inputBinding:
    prefix: -keep-isolated
- id: in_traversal
  doc: "(1 arg) :    traversal type ('contig', 'unitig')  [default 'contig']"
  type: boolean
  inputBinding:
    prefix: -traversal
- id: in_fast_a_line
  doc: "(1 arg) :    number of nucleotides per line in fasta output (0 means one line)\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -fasta-line
- id: in_no_bulge_removal
  doc: '(0 arg) :    ask to not perform bulge removal'
  type: boolean
  inputBinding:
    prefix: -no-bulge-removal
- id: in_no_tip_removal
  doc: '(0 arg) :    ask to not perform tip removal'
  type: boolean
  inputBinding:
    prefix: -no-tip-removal
- id: in_no_ec_removal
  doc: '(0 arg) :    ask to not perform erroneous connection removal'
  type: boolean
  inputBinding:
    prefix: -no-ec-removal
- id: in_tip_len_topo_k_mult
  doc: "(1 arg) :    remove all tips of length <= k * X bp  [default '2.500000']"
  type: boolean
  inputBinding:
    prefix: -tip-len-topo-kmult
- id: in_tip_len_rctc_k_mult
  doc: "(1 arg) :    remove tips that pass coverage criteria, of length <= k * X bp\
    \  [default '10.000000']"
  type: boolean
  inputBinding:
    prefix: -tip-len-rctc-kmult
- id: in_tip_rctc_cut_off
  doc: "(1 arg) :    tip relative coverage coefficient: mean coverage of neighbors\
    \ >  X * tip coverage  [default '2.000000']"
  type: boolean
  inputBinding:
    prefix: -tip-rctc-cutoff
- id: in_bulge_len_k_mult
  doc: "(1 arg) :    bulges shorter than k*X bp are candidate to be removed  [default\
    \ '3.000000']"
  type: boolean
  inputBinding:
    prefix: -bulge-len-kmult
- id: in_bulge_len_k_add
  doc: "(1 arg) :    bulges shorter than k+X bp are candidate to be removed  [default\
    \ '100']"
  type: boolean
  inputBinding:
    prefix: -bulge-len-kadd
- id: in_bulge_alt_path_k_add
  doc: "(1 arg) :    explore up to k+X nodes to find alternative path  [default '50']"
  type: boolean
  inputBinding:
    prefix: -bulge-altpath-kadd
- id: in_bulge_alt_path_cov_mult
  doc: "(1 arg) :    bulges of coverage <= X*cov_altpath will be removed  [default\
    \ '1.100000']"
  type: boolean
  inputBinding:
    prefix: -bulge-altpath-covmult
- id: in_ec_len_k_mult
  doc: "(1 arg) :    EC shorter than k*X bp are candidates to be removed  [default\
    \ '9.000000']"
  type: boolean
  inputBinding:
    prefix: -ec-len-kmult
- id: in_ec_rctc_cut_off
  doc: "(1 arg) :    EC relative coverage coefficient (similar in spirit as tip) \
    \ [default '4.000000']"
  type: boolean
  inputBinding:
    prefix: -ec-rctc-cutoff
- id: in_no_mph_f
  doc: "(0 arg) :    don't construct the MPHF"
  type: boolean
  inputBinding:
    prefix: -no-mphf
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
  type: boolean
  inputBinding:
    prefix: -abundance-min
- id: in_abundance_max
  doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  type: boolean
  inputBinding:
    prefix: -abundance-max
- id: in_abundance_min_threshold
  doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '2']"
  type: boolean
  inputBinding:
    prefix: -abundance-min-threshold
- id: in_histo_max
  doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  type: boolean
  inputBinding:
    prefix: -histo-max
- id: in_solidity_kind
  doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all,\
    \ custom)  [default 'sum']"
  type: boolean
  inputBinding:
    prefix: -solidity-kind
- id: in_solidity_custom
  doc: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer\
    \ must be present  [default '']"
  type: boolean
  inputBinding:
    prefix: -solidity-custom
- id: in_max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: in_max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-disk
- id: in_solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  type: File
  inputBinding:
    prefix: -solid-kmers-out
- id: in_out
  doc: "(1 arg) :    output file  [default '']"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory
  inputBinding:
    prefix: -out-dir
- id: in_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory
  inputBinding:
    prefix: -out-tmp
- id: in_out_compress
  doc: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -out-compress
- id: in_storage_type
  doc: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
  type: boolean
  inputBinding:
    prefix: -storage-type
- id: in_histo_two_d
  doc: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining\
    \ files = reads)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -histo2D
- id: in_histo
  doc: "(1 arg) :    output the kmer abundance histogram  [default '0']"
  type: boolean
  inputBinding:
    prefix: -histo
- id: in_minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -minimizer-type
- id: in_minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '10']"
  type: boolean
  inputBinding:
    prefix: -minimizer-size
- id: in_repartition_type
  doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -repartition-type
- id: in_bloom
  doc: "(1 arg) :    bloom type ('basic', 'cache', 'neighbor')  [default 'neighbor']"
  type: boolean
  inputBinding:
    prefix: -bloom
- id: in_de_bloom
  doc: "(1 arg) :    debloom type ('none', 'original' or 'cascading')  [default 'cascading']"
  type: boolean
  inputBinding:
    prefix: -debloom
- id: in_de_bloom_impl
  doc: "(1 arg) :    debloom impl ('basic', 'minimizer')  [default 'minimizer']"
  type: boolean
  inputBinding:
    prefix: -debloom-impl
- id: in_branching_nodes
  doc: "(1 arg) :    branching type ('none' or 'stored')  [default 'stored']"
  type: boolean
  inputBinding:
    prefix: -branching-nodes
- id: in_topology_stats
  doc: "(1 arg) :    topological information level (0 for none)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -topology-stats
- id: in_config_only
  doc: '(0 arg) :    dump config only'
  type: boolean
  inputBinding:
    prefix: -config-only
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: in_all_abundance_counts
  doc: '(0 arg) :    output all k-mer abundance counts instead of mean'
  type: boolean
  inputBinding:
    prefix: -all-abundance-counts
- id: in_edge_km
  doc: "(1 arg) :    edge km representation  [default '0']"
  type: boolean
  inputBinding:
    prefix: -edge-km
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_integer_precision
  doc: "(1 arg) :    integers precision (0 for optimized value)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -integer-precision
- id: in_redo_b_calm
  doc: '(0 arg) :    debug function, redo the bcalm algo'
  type: boolean
  inputBinding:
    prefix: -redo-bcalm
- id: in_skip_b_calm
  doc: '(0 arg) :    same, but       skip     bcalm'
  type: boolean
  inputBinding:
    prefix: -skip-bcalm
- id: in_redo_b_glue
  doc: '(0 arg) :    same, but       redo     bglue (needs debug_keep_glue_files=true
    in source code)'
  type: boolean
  inputBinding:
    prefix: -redo-bglue
- id: in_skip_b_glue
  doc: '(0 arg) :    same, but       skip     bglue'
  type: boolean
  inputBinding:
    prefix: -skip-bglue
- id: in_redo_links
  doc: '(0 arg) :    same, but       redo     links'
  type: boolean
  inputBinding:
    prefix: -redo-links
- id: in_skip_links
  doc: '(0 arg) :    same, but       skip     links'
  type: boolean
  inputBinding:
    prefix: -skip-links
- id: in_nb_glue_partitions
  doc: "(1 arg) :    number of glue partitions (automatically calculated by default)\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-glue-partitions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_solid_km_ers_out)
- id: out_out
  doc: "(1 arg) :    output file  [default '']"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_tmp)
cwlVersion: v1.1
baseCommand:
- minia
