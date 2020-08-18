class: CommandLineTool
id: ../../../ganon_classify.cwl
inputs:
- id: single_reads
  doc: File[s] with single-end reads .fq .fastq .fasta .fa (e.g. file1.fq[.gz],[file2.fq[.gz]
    ... fileN.fq[.gz]])
  type: string
  inputBinding:
    prefix: --single-reads
- id: paired_reads
  doc: Pairs of files with paired-end reads .fq .fastq .fasta .fa (e.g. file1.1.fq[.gz],file1.2.fq[.gz],[file2.1.fq[.gz],file2.2.fq[.gz]
    ... fileN.1.fq[.gz],fileN.2.fq[.gz]])
  type: string
  inputBinding:
    prefix: --paired-reads
- id: ibf
  doc: ibf (Interleaved Bloom Filter) file[s] (e.g. -b a.ibf,b.ibf OR -b a.ibf -b
    b.ibf )
  type: string
  inputBinding:
    prefix: --ibf
- id: map
  doc: 'map files[s]. Tab-separated file mapping target groups (taxids, assemblies)
    and bin identifiers with the following fields: target <tab> bin id (e.g. -g a.map,b.map
    OR -g a.map -g b.map)'
  type: string
  inputBinding:
    prefix: --map
- id: tax
  doc: 'tax (taxonomy) files[s]. Tab-separated file with a complete tree with the
    following fields: node <tab> parent node <tab> rank <tab> name (e.g. -g a.tax,b.tax
    OR -g a.tax -g b.tax)'
  type: string
  inputBinding:
    prefix: --tax
- id: hierarchy_labels
  doc: "Hierarchy labels for the database files (hierarchy follows the order of the\
    \ sorted labels) (e.g. 1_host,2_target,1_host,3). Default: '1_default'"
  type: string
  inputBinding:
    prefix: --hierarchy-labels
- id: min_km_ers
  doc: 'Minimum percentage of k-mers matching for a read to to be assigned [muttualy
    exclusive --max-error]. One per filter. Default: 0.25'
  type: string
  inputBinding:
    prefix: --min-kmers
- id: max_error
  doc: Maximum number of errors/mismatches allowed [muttualy exclusive --min-kmers].
    One per filter.
  type: string
  inputBinding:
    prefix: --max-error
- id: max_error_unique
  doc: Maximum number of errors/mismatches allowed for unique matches after filtering.
    One per hiearchy label.
  type: string
  inputBinding:
    prefix: --max-error-unique
- id: strata_filter
  doc: 'Additional errors allowed (relative to the best match) to filter and select
    matches. -1 for no filtering. One per hiearchy label. Default: 0'
  type: string
  inputBinding:
    prefix: --strata-filter
- id: offset
  doc: 'Offset for skipping k-mers while counting. Function must be enabled on compilation
    time with -DGANON_OFFSET=ON. Default: 1 = no offset'
  type: string
  inputBinding:
    prefix: --offset
- id: output_prefix
  doc: Output prefix for output files (prefix.lca, prefix.rep, prefix.all, prefix.unc).
    If multi-level hiearchy is provded, files are generated accordingly (prefix.hiearchy.lca,
    ...). Omit for output to STDOUT (only .lca will be printed)
  type: string
  inputBinding:
    prefix: --output-prefix
- id: output_all
  doc: Output file with all matches (prefix.all) [it can be very big]
  type: boolean
  inputBinding:
    prefix: --output-all
- id: output_unclassified
  doc: Output unclassified read ids (prefix.unc)
  type: boolean
  inputBinding:
    prefix: --output-unclassified
- id: output_single
  doc: Generate only one output (prefix.lca and prefix.rep) even with multiple hierarchy
    levels
  type: boolean
  inputBinding:
    prefix: --output-single
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: n_reads
  doc: 'Number of reads for each batch. Default: 400'
  type: string
  inputBinding:
    prefix: --n-reads
- id: n_batches
  doc: 'Number of batches of n-reads to hold in memory. Default: 1000'
  type: string
  inputBinding:
    prefix: --n-batches
- id: verbose
  doc: Verbose output mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet output mode (only outputs errors and warnings to the STDERR)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ganon-classify
