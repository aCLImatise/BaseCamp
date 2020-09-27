class: CommandLineTool
id: dbgh5.cwl
inputs:
- id: in_no_mph_f
  doc: "(0 arg) :    don't construct the MPHF"
  type: boolean
  inputBinding:
    prefix: -no-mphf
- id: in_in
  doc: '(1 arg) :    reads file'
  type: boolean
  inputBinding:
    prefix: -in
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
- id: in_email
  doc: "(1 arg) :    send statistics to the given email address  [default '']"
  type: boolean
  inputBinding:
    prefix: -email
- id: in_email_fmt
  doc: "(1 arg) :    'raw' or 'xml'  [default 'raw']"
  type: boolean
  inputBinding:
    prefix: -email-fmt
- id: in_check
  doc: "(1 arg) :    check result with previous result  [default '']"
  type: boolean
  inputBinding:
    prefix: -check
- id: in_check_dump
  doc: "(1 arg) :    dump some properties of the created graph into a file  [default\
    \ '']"
  type: boolean
  inputBinding:
    prefix: -check-dump
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
- id: in_git_sha_one
  doc: ': notset'
  type: long
  inputBinding:
    position: 0
- id: in_build_system
  doc: ': Linux-4.4.0-96-generic'
  type: string
  inputBinding:
    position: 1
- id: in_build_compiler
  doc: ': /opt/conda/conda-bld/discosnp_1585044920332/_build_env/bin/x86_64-conda_cos6-linux-gnu-cc  (7.3.0)'
  type: string
  inputBinding:
    position: 2
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
- dbgh5
