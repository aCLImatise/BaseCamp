class: CommandLineTool
id: ganon_classify.cwl
inputs:
- id: c
  doc: '[HIERARCHY_LABELS [HIERARCHY_LABELS ...]], --hierarchy-labels [HIERARCHY_LABELS
    [HIERARCHY_LABELS ...]] Hierarchy definition, one for each database input. Can
    also be a string, but input will be sorted to define order (e.g. 1 1 2 3). Default:
    1'
  type: boolean
  inputBinding:
    prefix: -c
- id: k
  doc: '[MIN_KMERS [MIN_KMERS ...]], --min-kmers [MIN_KMERS [MIN_KMERS ...]] Min.
    percentage of k-mers matching to consider a read assigned. Single value or one
    per database (e.g. 0.5 0.7 1 0.25). Default: 0.25 [Mutually exclusive --max- error]'
  type: boolean
  inputBinding:
    prefix: -k
- id: e
  doc: '[MAX_ERROR [MAX_ERROR ...]], --max-error [MAX_ERROR [MAX_ERROR ...]] Max.
    number of errors allowed. Single value or one per database (e.g. 3 3 4 0) [Mutually
    exclusive --min- kmers]'
  type: boolean
  inputBinding:
    prefix: -e
- id: u
  doc: '[MAX_ERROR_UNIQUE [MAX_ERROR_UNIQUE ...]], --max-error-unique [MAX_ERROR_UNIQUE
    [MAX_ERROR_UNIQUE ...]] Max. number of errors allowed for unique assignments after
    filtering. Matches below this error rate will not be discarded, but assigned to
    a parent taxonomic level. Single value or one per hierarchy (e.g. 0 1 2). -1 to
    disable. Default: -1'
  type: boolean
  inputBinding:
    prefix: -u
- id: l
  doc: '[STRATA_FILTER [STRATA_FILTER ...]], --strata-filter [STRATA_FILTER [STRATA_FILTER
    ...]] Additional errors allowed (relative to the best match) to filter and select
    matches. Single value or one per hierarchy (e.g. 0 1 2). -1 to disable filtering.
    Default: 0'
  type: boolean
  inputBinding:
    prefix: -l
- id: offset
  doc: 'Number of k-mers to skip during classification. Can speed up analysis but
    may reduce recall. (e.g. 1 = all k-mers, 3 = every 3rd k-mer). Default: 2'
  type: string
  inputBinding:
    prefix: --offset
- id: output_prefix
  doc: Output prefix for .lca and .rep. Empty to output to STDOUT (only .lca will
    be printed)
  type: string
  inputBinding:
    prefix: --output-prefix
- id: output_all
  doc: Output an additional file with all matches (.all). File can be very large.
  type: boolean
  inputBinding:
    prefix: --output-all
- id: output_unclassified
  doc: Output an additional file with unclassified read headers (.unc)
  type: boolean
  inputBinding:
    prefix: --output-unclassified
- id: output_single
  doc: When using multiple hierarchical levels, output everything in one file instead
    of one per hierarchy
  type: boolean
  inputBinding:
    prefix: --output-single
- id: ranks
  doc: '[RANKS [RANKS ...]] Ranks to show in the report (.tre). "all" for all identified
    ranks. empty for default ranks: superkingdom phylum class order family genus species
    species+ assembly. This file can be re-generated with the ganon report command.'
  type: boolean
  inputBinding:
    prefix: --ranks
- id: threads
  doc: 'Number of subprocesses/threads to use. Default: 3'
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: Verbose mode for ganon-classify
  type: boolean
  inputBinding:
    prefix: --verbose
- id: d
  doc: '[db_prefix [db_prefix ...]], --db-prefix [db_prefix [db_prefix ...]] Database
    input prefix[es]'
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: '[reads.fq[.gz] [reads.fq[.gz] ...]], --single-reads [reads.fq[.gz] [reads.fq[.gz]
    ...]] Multi-fastq[.gz] file[s] to classify'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '[reads.1.fq[.gz] reads.2.fq[.gz] [reads.1.fq[.gz] reads.2.fq[.gz] ...]], --paired-reads
    [reads.1.fq[.gz] reads.2.fq[.gz] [reads.1.fq[.gz] reads.2.fq[.gz] ...]] Multi-fastq[.gz]
    pairs of file[s] to classify'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ganon
- classify
