class: CommandLineTool
id: minia.cwl
inputs:
- id: in
  doc: "(1 arg) :    input reads (fasta/fastq/compressed) or hdf5 file  [default '']"
  type: boolean
  inputBinding:
    prefix: -in
- id: keep_isolated
  doc: '(0 arg) :    keep short (<= max(2k, 150 bp)) isolated output sequences'
  type: boolean
  inputBinding:
    prefix: -keep-isolated
- id: traversal
  doc: "(1 arg) :    traversal type ('contig', 'unitig')  [default 'contig']"
  type: boolean
  inputBinding:
    prefix: -traversal
- id: fast_a_line
  doc: "(1 arg) :    number of nucleotides per line in fasta output (0 means one line)\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -fasta-line
- id: no_bulge_removal
  doc: '(0 arg) :    ask to not perform bulge removal'
  type: boolean
  inputBinding:
    prefix: -no-bulge-removal
- id: no_tip_removal
  doc: '(0 arg) :    ask to not perform tip removal'
  type: boolean
  inputBinding:
    prefix: -no-tip-removal
- id: no_ec_removal
  doc: '(0 arg) :    ask to not perform erroneous connection removal'
  type: boolean
  inputBinding:
    prefix: -no-ec-removal
- id: tip_len_topo_k_mult
  doc: "(1 arg) :    remove all tips of length <= k * X bp  [default '2.500000']"
  type: boolean
  inputBinding:
    prefix: -tip-len-topo-kmult
- id: tip_len_rctc_k_mult
  doc: "(1 arg) :    remove tips that pass coverage criteria, of length <= k * X bp\
    \  [default '10.000000']"
  type: boolean
  inputBinding:
    prefix: -tip-len-rctc-kmult
- id: tip_rctc_cut_off
  doc: "(1 arg) :    tip relative coverage coefficient: mean coverage of neighbors\
    \ >  X * tip coverage  [default '2.000000']"
  type: boolean
  inputBinding:
    prefix: -tip-rctc-cutoff
- id: bulge_len_k_mult
  doc: "(1 arg) :    bulges shorter than k*X bp are candidate to be removed  [default\
    \ '3.000000']"
  type: boolean
  inputBinding:
    prefix: -bulge-len-kmult
- id: bulge_len_k_add
  doc: "(1 arg) :    bulges shorter than k+X bp are candidate to be removed  [default\
    \ '100']"
  type: boolean
  inputBinding:
    prefix: -bulge-len-kadd
- id: bulge_alt_path_k_add
  doc: "(1 arg) :    explore up to k+X nodes to find alternative path  [default '50']"
  type: boolean
  inputBinding:
    prefix: -bulge-altpath-kadd
- id: bulge_alt_path_cov_mult
  doc: "(1 arg) :    bulges of coverage <= X*cov_altpath will be removed  [default\
    \ '1.100000']"
  type: boolean
  inputBinding:
    prefix: -bulge-altpath-covmult
- id: ec_len_k_mult
  doc: "(1 arg) :    EC shorter than k*X bp are candidates to be removed  [default\
    \ '9.000000']"
  type: boolean
  inputBinding:
    prefix: -ec-len-kmult
- id: ec_rctc_cut_off
  doc: "(1 arg) :    EC relative coverage coefficient (similar in spirit as tip) \
    \ [default '4.000000']"
  type: boolean
  inputBinding:
    prefix: -ec-rctc-cutoff
- id: no_mph_f
  doc: "(0 arg) :    don't construct the MPHF"
  type: boolean
  inputBinding:
    prefix: -no-mphf
- id: km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean
  inputBinding:
    prefix: -kmer-size
- id: abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
  type: boolean
  inputBinding:
    prefix: -abundance-min
- id: abundance_max
  doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  type: boolean
  inputBinding:
    prefix: -abundance-max
- id: abundance_min_threshold
  doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '2']"
  type: boolean
  inputBinding:
    prefix: -abundance-min-threshold
- id: histo_max
  doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  type: boolean
  inputBinding:
    prefix: -histo-max
- id: solidity_kind
  doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all,\
    \ custom)  [default 'sum']"
  type: boolean
  inputBinding:
    prefix: -solidity-kind
- id: solidity_custom
  doc: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer\
    \ must be present  [default '']"
  type: boolean
  inputBinding:
    prefix: -solidity-custom
- id: max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  type: boolean
  inputBinding:
    prefix: -max-memory
- id: max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -max-disk
- id: solid_km_ers_out
  doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  type: boolean
  inputBinding:
    prefix: -solid-kmers-out
- id: out
  doc: "(1 arg) :    output file  [default '']"
  type: boolean
  inputBinding:
    prefix: -out
- id: out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: boolean
  inputBinding:
    prefix: -out-dir
- id: out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: boolean
  inputBinding:
    prefix: -out-tmp
- id: out_compress
  doc: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -out-compress
- id: storage_type
  doc: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
  type: boolean
  inputBinding:
    prefix: -storage-type
- id: histo2d
  doc: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining\
    \ files = reads)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -histo2D
- id: histo
  doc: "(1 arg) :    output the kmer abundance histogram  [default '0']"
  type: boolean
  inputBinding:
    prefix: -histo
- id: minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -minimizer-type
- id: minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '10']"
  type: boolean
  inputBinding:
    prefix: -minimizer-size
- id: repartition_type
  doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -repartition-type
- id: bloom
  doc: "(1 arg) :    bloom type ('basic', 'cache', 'neighbor')  [default 'neighbor']"
  type: boolean
  inputBinding:
    prefix: -bloom
- id: de_bloom
  doc: "(1 arg) :    debloom type ('none', 'original' or 'cascading')  [default 'cascading']"
  type: boolean
  inputBinding:
    prefix: -debloom
- id: de_bloom_impl
  doc: "(1 arg) :    debloom impl ('basic', 'minimizer')  [default 'minimizer']"
  type: boolean
  inputBinding:
    prefix: -debloom-impl
- id: branching_nodes
  doc: "(1 arg) :    branching type ('none' or 'stored')  [default 'stored']"
  type: boolean
  inputBinding:
    prefix: -branching-nodes
- id: topology_stats
  doc: "(1 arg) :    topological information level (0 for none)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -topology-stats
- id: config_only
  doc: '(0 arg) :    dump config only'
  type: boolean
  inputBinding:
    prefix: -config-only
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: all_abundance_counts
  doc: '(0 arg) :    output all k-mer abundance counts instead of mean'
  type: boolean
  inputBinding:
    prefix: -all-abundance-counts
- id: edge_km
  doc: "(1 arg) :    edge km representation  [default '0']"
  type: boolean
  inputBinding:
    prefix: -edge-km
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: integer_precision
  doc: "(1 arg) :    integers precision (0 for optimized value)  [default '0']"
  type: boolean
  inputBinding:
    prefix: -integer-precision
- id: redo_b_calm
  doc: '(0 arg) :    debug function, redo the bcalm algo'
  type: boolean
  inputBinding:
    prefix: -redo-bcalm
- id: skip_b_calm
  doc: '(0 arg) :    same, but       skip     bcalm'
  type: boolean
  inputBinding:
    prefix: -skip-bcalm
- id: redo_b_glue
  doc: '(0 arg) :    same, but       redo     bglue (needs debug_keep_glue_files=true
    in source code)'
  type: boolean
  inputBinding:
    prefix: -redo-bglue
- id: skip_b_glue
  doc: '(0 arg) :    same, but       skip     bglue'
  type: boolean
  inputBinding:
    prefix: -skip-bglue
- id: redo_links
  doc: '(0 arg) :    same, but       redo     links'
  type: boolean
  inputBinding:
    prefix: -redo-links
- id: skip_links
  doc: '(0 arg) :    same, but       skip     links'
  type: boolean
  inputBinding:
    prefix: -skip-links
- id: nb_glue_partitions
  doc: "(1 arg) :    number of glue partitions (automatically calculated by default)\
    \  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-glue-partitions
outputs: []
cwlVersion: v1.1
baseCommand:
- minia
