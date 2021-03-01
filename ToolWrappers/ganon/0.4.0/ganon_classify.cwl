class: CommandLineTool
id: ganon_classify.cwl
inputs:
- id: in_single_reads
  doc: "File[s] with single-end reads .fq .fastq .fasta\n.fa (e.g. file1.fq[.gz],[file2.fq[.gz]\
    \ ...\nfileN.fq[.gz]])"
  type: File?
  inputBinding:
    prefix: --single-reads
- id: in_paired_reads
  doc: "Pairs of files with paired-end reads .fq .fastq\n.fasta .fa (e.g.\nfile1.1.fq[.gz],file1.2.fq[.gz],[file2.1.fq[.gz],file2.2.fq[.gz]\
    \ ...\nfileN.1.fq[.gz],fileN.2.fq[.gz]])"
  type: double?
  inputBinding:
    prefix: --paired-reads
- id: in_ibf
  doc: "ibf (Interleaved Bloom Filter) file[s] (e.g. -b\na.ibf,b.ibf OR -b a.ibf -b\
    \ b.ibf )"
  type: File?
  inputBinding:
    prefix: --ibf
- id: in_map
  doc: "map files[s]. Tab-separated file mapping target\ngroups (taxids, assemblies)\
    \ and bin identifiers\nwith the following fields: target <tab> bin id\n(e.g. -g\
    \ a.map,b.map OR -g a.map -g b.map)"
  type: File?
  inputBinding:
    prefix: --map
- id: in_tax
  doc: "tax (taxonomy) files[s]. Tab-separated file\nwith a complete tree with the\
    \ following fields:\nnode <tab> parent node <tab> rank <tab> name (e.g.\n-g a.tax,b.tax\
    \ OR -g a.tax -g b.tax)"
  type: File?
  inputBinding:
    prefix: --tax
- id: in_hierarchy_labels
  doc: "Hierarchy labels for the database files\n(hierarchy follows the order of the\
    \ sorted labels)\n(e.g. 1_host,2_target,1_host,3). Default:\n'1_default'"
  type: long?
  inputBinding:
    prefix: --hierarchy-labels
- id: in_min_km_ers
  doc: "Minimum percentage of k-mers matching for a\nread to to be assigned [muttualy\
    \ exclusive\n--max-error]. One per filter. Default: 0.25"
  type: long?
  inputBinding:
    prefix: --min-kmers
- id: in_max_error
  doc: "Maximum number of errors/mismatches allowed\n[muttualy exclusive --min-kmers].\
    \ One per filter."
  type: long?
  inputBinding:
    prefix: --max-error
- id: in_max_error_unique
  doc: "Maximum number of errors/mismatches allowed for\nunique matches after filtering.\
    \ One per\nhiearchy label."
  type: long?
  inputBinding:
    prefix: --max-error-unique
- id: in_strata_filter
  doc: "Additional errors allowed (relative to the best\nmatch) to filter and select\
    \ matches. -1 for no\nfiltering. One per hiearchy label. Default: 0"
  type: long?
  inputBinding:
    prefix: --strata-filter
- id: in_offset
  doc: "Offset for skipping k-mers while counting.\nFunction must be enabled on compilation\
    \ time with\n-DGANON_OFFSET=ON. Default: 1 = no offset"
  type: long?
  inputBinding:
    prefix: --offset
- id: in_output_prefix
  doc: "Output prefix for output files (prefix.lca,\nprefix.rep, prefix.all, prefix.unc).\
    \ If multi-level\nhiearchy is provded, files are generated\naccordingly (prefix.hiearchy.lca,\
    \ ...). Omit for\noutput to STDOUT (only .lca will be printed)"
  type: string?
  inputBinding:
    prefix: --output-prefix
- id: in_output_all
  doc: "Output file with all matches (prefix.all) [it\ncan be very big]"
  type: File?
  inputBinding:
    prefix: --output-all
- id: in_output_unclassified
  doc: Output unclassified read ids (prefix.unc)
  type: boolean?
  inputBinding:
    prefix: --output-unclassified
- id: in_output_single
  doc: "Generate only one output (prefix.lca and\nprefix.rep) even with multiple hierarchy\
    \ levels"
  type: boolean?
  inputBinding:
    prefix: --output-single
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_n_reads
  doc: 'Number of reads for each batch. Default: 400'
  type: long?
  inputBinding:
    prefix: --n-reads
- id: in_n_batches
  doc: "Number of batches of n-reads to hold in memory.\nDefault: 1000"
  type: long?
  inputBinding:
    prefix: --n-batches
- id: in_verbose
  doc: Verbose output mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Quiet output mode (only outputs errors and\nwarnings to the STDERR)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_all
  doc: "Output file with all matches (prefix.all) [it\ncan be very big]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_all)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon-classify
