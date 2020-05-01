#!/usr/bin/env cwl-runner

baseCommand:
- ganon-classify
class: CommandLineTool
cwlVersion: v1.0
id: ganon-classify
inputs:
- doc: File[s] with single-end reads .fq .fastq .fasta .fa (e.g. file1.fq[.gz],[file2.fq[.gz]
    ... fileN.fq[.gz]])
  id: single_reads
  inputBinding:
    prefix: --single-reads
  type: string
- doc: Pairs of files with paired-end reads .fq .fastq .fasta .fa (e.g. file1.1.fq[.gz],file1.2.fq[.gz],[file2.1.fq[.gz],file2.2.fq[.gz]
    ... fileN.1.fq[.gz],fileN.2.fq[.gz]])
  id: paired_reads
  inputBinding:
    prefix: --paired-reads
  type: string
- doc: ibf (Interleaved Bloom Filter) file[s] (e.g. -b a.ibf,b.ibf OR -b a.ibf -b
    b.ibf )
  id: ibf
  inputBinding:
    prefix: --ibf
  type: string
- doc: 'map files[s]. Tab-separated file mapping target groups (taxids, assemblies)
    and bin identifiers with the following fields: target <tab> bin id (e.g. -g a.map,b.map
    OR -g a.map -g b.map)'
  id: map
  inputBinding:
    prefix: --map
  type: string
- doc: 'tax (taxonomy) files[s]. Tab-separated file with a complete tree with the
    following fields: node <tab> parent node <tab> rank <tab> name (e.g. -g a.tax,b.tax
    OR -g a.tax -g b.tax)'
  id: tax
  inputBinding:
    prefix: --tax
  type: string
- doc: "Hierarchy labels for the database files (hierarchy follows the order of the\
    \ sorted labels) (e.g. 1_host,2_target,1_host,3). Default: '1_default'"
  id: hierarchy_labels
  inputBinding:
    prefix: --hierarchy-labels
  type: string
- doc: 'Minimum percentage of k-mers matching for a read to to be assigned [muttualy
    exclusive --max-error]. One per filter. Default: 0.25'
  id: min_km_ers
  inputBinding:
    prefix: --min-kmers
  type: string
- doc: Maximum number of errors/mismatches allowed [muttualy exclusive --min-kmers].
    One per filter.
  id: max_error
  inputBinding:
    prefix: --max-error
  type: string
- doc: Maximum number of errors/mismatches allowed for unique matches after filtering.
    One per hiearchy label.
  id: max_error_unique
  inputBinding:
    prefix: --max-error-unique
  type: string
- doc: 'Additional errors allowed (relative to the best match) to filter and select
    matches. -1 for no filtering. One per hiearchy label. Default: 0'
  id: strata_filter
  inputBinding:
    prefix: --strata-filter
  type: string
- doc: 'Offset for skipping k-mers while counting. Function must be enabled on compilation
    time with -DGANON_OFFSET=ON. Default: 1 = no offset'
  id: offset
  inputBinding:
    prefix: --offset
  type: string
- doc: Output prefix for output files (prefix.lca, prefix.rep, prefix.all, prefix.unc).
    If multi-level hiearchy is provded, files are generated accordingly (prefix.hiearchy.lca,
    ...). Omit for output to STDOUT (only .lca will be printed)
  id: output_prefix
  inputBinding:
    prefix: --output-prefix
  type: string
- doc: Output file with all matches (prefix.all) [it can be very big]
  id: output_all
  inputBinding:
    prefix: --output-all
  type: boolean
- doc: Output unclassified read ids (prefix.unc)
  id: output_unclassified
  inputBinding:
    prefix: --output-unclassified
  type: boolean
- doc: Generate only one output (prefix.lca and prefix.rep) even with multiple hierarchy
    levels
  id: output_single
  inputBinding:
    prefix: --output-single
  type: boolean
- doc: Number of threads
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Number of reads for each batch. Default: 400'
  id: n_reads
  inputBinding:
    prefix: --n-reads
  type: string
- doc: 'Number of batches of n-reads to hold in memory. Default: 1000'
  id: n_batches
  inputBinding:
    prefix: --n-batches
  type: string
- doc: Verbose output mode
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet output mode (only outputs errors and warnings to the STDERR)
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
