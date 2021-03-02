class: CommandLineTool
id: bcalm.cwl
inputs:
- id: in_nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-cores
- id: in_verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: '(0 arg) :    version'
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_no_mph_f
  doc: "(0 arg) :    don't construct the MPHF"
  type: boolean?
  inputBinding:
    prefix: -no-mphf
- id: in_in
  doc: "(1 arg) :    reads file  [default '']"
  type: boolean?
  inputBinding:
    prefix: -in
- id: in_km_er_size
  doc: "(1 arg) :    size of a kmer  [default '31']"
  type: boolean?
  inputBinding:
    prefix: -kmer-size
- id: in_abundance_min
  doc: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
  type: boolean?
  inputBinding:
    prefix: -abundance-min
- id: in_abundance_max
  doc: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
  type: boolean?
  inputBinding:
    prefix: -abundance-max
- id: in_solidity_custom
  doc: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer\
    \ must be present  [default '']"
  type: boolean?
  inputBinding:
    prefix: -solidity-custom
- id: in_max_memory
  doc: "(1 arg) :    max memory (in MBytes)  [default '5000']"
  type: boolean?
  inputBinding:
    prefix: -max-memory
- id: in_max_disk
  doc: "(1 arg) :    max disk   (in MBytes)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -max-disk
- id: in_out
  doc: "(1 arg) :    output file  [default '']"
  type: File?
  inputBinding:
    prefix: -out
- id: in_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory?
  inputBinding:
    prefix: -out-dir
- id: in_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory?
  inputBinding:
    prefix: -out-tmp
- id: in_out_compress
  doc: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -out-compress
- id: in_storage_type
  doc: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
  type: boolean?
  inputBinding:
    prefix: -storage-type
- id: in_histo_two_d
  doc: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining\
    \ files = reads)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -histo2D
- id: in_histo
  doc: "(1 arg) :    output the kmer abundance histogram  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -histo
- id: in_minimizer_type
  doc: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -minimizer-type
- id: in_minimizer_size
  doc: "(1 arg) :    size of a minimizer  [default '10']"
  type: boolean?
  inputBinding:
    prefix: -minimizer-size
- id: in_repartition_type
  doc: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '1']"
  type: boolean?
  inputBinding:
    prefix: -repartition-type
- id: in_bloom
  doc: "(1 arg) :    bloom type ('basic', 'cache', 'neighbor')  [default 'neighbor']"
  type: boolean?
  inputBinding:
    prefix: -bloom
- id: in_de_bloom
  doc: "(1 arg) :    debloom type ('none', 'original' or 'cascading')  [default 'cascading']"
  type: boolean?
  inputBinding:
    prefix: -debloom
- id: in_de_bloom_impl
  doc: "(1 arg) :    debloom impl ('basic', 'minimizer')  [default 'minimizer']"
  type: boolean?
  inputBinding:
    prefix: -debloom-impl
- id: in_branching_nodes
  doc: "(1 arg) :    branching type ('none' or 'stored')  [default 'stored']"
  type: boolean?
  inputBinding:
    prefix: -branching-nodes
- id: in_topology_stats
  doc: "(1 arg) :    topological information level (0 for none)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -topology-stats
- id: in_config_only
  doc: '(0 arg) :    dump config only'
  type: boolean?
  inputBinding:
    prefix: -config-only
- id: in_all_abundance_counts
  doc: '(0 arg) :    output all k-mer abundance counts instead of mean'
  type: boolean?
  inputBinding:
    prefix: -all-abundance-counts
- id: in_edge_km
  doc: "(1 arg) :    edge km representation  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -edge-km
- id: in_integer_precision
  doc: "(1 arg) :    integers precision (0 for optimized value)  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -integer-precision
- id: in_redo_b_calm
  doc: '(0 arg) :    debug function, redo the bcalm algo'
  type: boolean?
  inputBinding:
    prefix: -redo-bcalm
- id: in_skip_b_calm
  doc: '(0 arg) :    same, but       skip     bcalm'
  type: boolean?
  inputBinding:
    prefix: -skip-bcalm
- id: in_redo_b_glue
  doc: '(0 arg) :    same, but       redo     bglue (needs debug_keep_glue_files=true
    in source code)'
  type: boolean?
  inputBinding:
    prefix: -redo-bglue
- id: in_skip_b_glue
  doc: '(0 arg) :    same, but       skip     bglue'
  type: boolean?
  inputBinding:
    prefix: -skip-bglue
- id: in_redo_links
  doc: '(0 arg) :    same, but       redo     links'
  type: boolean?
  inputBinding:
    prefix: -redo-links
- id: in_skip_links
  doc: '(0 arg) :    same, but       skip     links'
  type: boolean?
  inputBinding:
    prefix: -skip-links
- id: in_nb_glue_partitions
  doc: "(1 arg) :    number of glue partitions (automatically calculated by default)\
    \  [default '0']"
  type: boolean?
  inputBinding:
    prefix: -nb-glue-partitions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "(1 arg) :    output file  [default '']"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_dir
  doc: "(1 arg) :    output directory  [default '.']"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_tmp
  doc: "(1 arg) :    output directory for temporary files  [default '.']"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_tmp)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcalm:2.2.3--h8b12597_1
cwlVersion: v1.1
baseCommand:
- bcalm
