#!/usr/bin/env cwl-runner

baseCommand:
- dbgh5
class: CommandLineTool
cwlVersion: v1.0
id: dbgh5
inputs:
- doc: ': 1.4.1'
  id: version
  inputBinding:
    position: 0
  type: string
- doc: ': notset'
  id: git_sha1
  inputBinding:
    position: 1
  type: string
- doc: ': 2020-04-02/13:21:23'
  id: build_date
  inputBinding:
    position: 2
  type: string
- doc: ': Linux-4.4.0-96-generic'
  id: build_system
  inputBinding:
    position: 3
  type: string
- doc: ': /opt/conda/conda-bld/mindthegap_1585833566366/_build_env/bin/x86_64-conda_cos6-linux-gnu-cc  (7.3.0)'
  id: build_compiler
  inputBinding:
    position: 4
  type: string
- doc: ': 32 64 96 128'
  id: build_km_er_size
  inputBinding:
    position: 5
  type: string
- doc: "(0 arg) :    don't construct the MPHF"
  id: no_mph_f
  inputBinding:
    prefix: -no-mphf
  type: boolean
- doc: '(1 arg) :    reads file'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
- doc: "(1 arg) :    size of a kmer  [default '31']"
  id: km_er_size
  inputBinding:
    prefix: -kmer-size
  type: boolean
- doc: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
  id: abundance_min
  inputBinding:
    prefix: -abundance-min
  type: boolean
- doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  id: abundance_max
  inputBinding:
    prefix: -abundance-max
  type: boolean
- doc: "(1 arg) :    min abundance hard threshold (only used when min abundance is\
    \ \"auto\")  [default '2']"
  id: abundance_min_threshold
  inputBinding:
    prefix: -abundance-min-threshold
  type: boolean
- doc: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
  id: histo_max
  inputBinding:
    prefix: -histo-max
  type: boolean
- doc: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all,\
    \ custom)  [default 'sum']"
  id: solidity_kind
  inputBinding:
    prefix: -solidity-kind
  type: boolean
- doc: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer\
    \ must be present  [default '']"
  id: solidity_custom
  inputBinding:
    prefix: -solidity-custom
  type: boolean
- doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  id: max_memory
  inputBinding:
    prefix: -max-memory
  type: boolean
- doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  id: max_disk
  inputBinding:
    prefix: -max-disk
  type: boolean
- doc: "(1 arg) :    output file for solid kmers (only when constructing a graph)\
    \  [default '']"
  id: solid_km_ers_out
  inputBinding:
    prefix: -solid-kmers-out
  type: boolean
- doc: "(1 arg) :    output file  [default '']"
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: "(1 arg) :    output directory  [default '.']"
  id: out_dir
  inputBinding:
    prefix: -out-dir
  type: boolean
- doc: "(1 arg) :    output directory for temporary files  [default '.']"
  id: out_tmp
  inputBinding:
    prefix: -out-tmp
  type: boolean
- doc: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
  id: out_compress
  inputBinding:
    prefix: -out-compress
  type: boolean
- doc: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
  id: storage_type
  inputBinding:
    prefix: -storage-type
  type: boolean
- doc: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining\
    \ files = reads)  [default '0']"
  id: histo2d
  inputBinding:
    prefix: -histo2D
  type: boolean
- doc: "(1 arg) :    output the kmer abundance histogram  [default '0']"
  id: histo
  inputBinding:
    prefix: -histo
  type: boolean
- doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
  id: minimizer_type
  inputBinding:
    prefix: -minimizer-type
  type: boolean
- doc: "(1 arg) :    size of a minimizer  [default '10']"
  id: minimizer_size
  inputBinding:
    prefix: -minimizer-size
  type: boolean
- doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  id: repartition_type
  inputBinding:
    prefix: -repartition-type
  type: boolean
- doc: "(1 arg) :    bloom type ('basic', 'cache', 'neighbor')  [default 'neighbor']"
  id: bloom
  inputBinding:
    prefix: -bloom
  type: boolean
- doc: "(1 arg) :    debloom type ('none', 'original' or 'cascading')  [default 'cascading']"
  id: de_bloom
  inputBinding:
    prefix: -debloom
  type: boolean
- doc: "(1 arg) :    debloom impl ('basic', 'minimizer')  [default 'minimizer']"
  id: de_bloom_impl
  inputBinding:
    prefix: -debloom-impl
  type: boolean
- doc: "(1 arg) :    branching type ('none' or 'stored')  [default 'stored']"
  id: branching_nodes
  inputBinding:
    prefix: -branching-nodes
  type: boolean
- doc: "(1 arg) :    topological information level (0 for none)  [default '0']"
  id: topology_stats
  inputBinding:
    prefix: -topology-stats
  type: boolean
- doc: '(0 arg) :    dump config only'
  id: config_only
  inputBinding:
    prefix: -config-only
  type: boolean
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: "(1 arg) :    integers precision (0 for optimized value)  [default '0']"
  id: integer_precision
  inputBinding:
    prefix: -integer-precision
  type: boolean
- doc: "(1 arg) :    send statistics to the given email address  [default '']"
  id: email
  inputBinding:
    prefix: -email
  type: boolean
- doc: "(1 arg) :    'raw' or 'xml'  [default 'raw']"
  id: email_fmt
  inputBinding:
    prefix: -email-fmt
  type: boolean
- doc: "(1 arg) :    check result with previous result  [default '']"
  id: check
  inputBinding:
    prefix: -check
  type: boolean
- doc: "(1 arg) :    dump some properties of the created graph into a file  [default\
    \ '']"
  id: check_dump
  inputBinding:
    prefix: -check-dump
  type: boolean
- doc: '(0 arg) :    debug function, redo the bcalm algo'
  id: redo_b_calm
  inputBinding:
    prefix: -redo-bcalm
  type: boolean
- doc: '(0 arg) :    same, but       skip     bcalm'
  id: skip_b_calm
  inputBinding:
    prefix: -skip-bcalm
  type: boolean
- doc: '(0 arg) :    same, but       redo     bglue'
  id: redo_b_glue
  inputBinding:
    prefix: -redo-bglue
  type: boolean
- doc: '(0 arg) :    same, but       skip     bglue'
  id: skip_b_glue
  inputBinding:
    prefix: -skip-bglue
  type: boolean
- doc: '(0 arg) :    same, but       redo     links'
  id: redo_links
  inputBinding:
    prefix: -redo-links
  type: boolean
- doc: '(0 arg) :    same, but       skip     links'
  id: skip_links
  inputBinding:
    prefix: -skip-links
  type: boolean
- doc: "(1 arg) :    number of glue partitions (automatically calculated by default)\
    \  [default '0']"
  id: nb_glue_partitions
  inputBinding:
    prefix: -nb-glue-partitions
  type: boolean
