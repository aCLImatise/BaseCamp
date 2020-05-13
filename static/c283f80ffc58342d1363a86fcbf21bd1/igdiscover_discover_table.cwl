class: CommandLineTool
id: igdiscover_discover_table.cwl
inputs:
- id: clo_no_query
  doc: Query a table of assigned sequences by clonotype
  type: string
  inputBinding:
    position: 0
- id: clo_no_types
  doc: Group assigned sequences by clonotype
  type: string
  inputBinding:
    position: 1
- id: cluster_plot
  doc: Plot a clustermap of all sequences assigned to a gene
  type: string
  inputBinding:
    position: 2
- id: common_v
  doc: Find common V genes between two different antibody libraries.
  type: string
  inputBinding:
    position: 3
- id: config
  doc: Change configuration file
  type: string
  inputBinding:
    position: 4
- id: count
  doc: Compute expression counts
  type: string
  inputBinding:
    position: 5
- id: db_diff
  doc: Compare two FASTA files based on sequences
  type: string
  inputBinding:
    position: 6
- id: dendrogram
  doc: Draw a dendrogram of sequences in a FASTA file.
  type: string
  inputBinding:
    position: 7
- id: de_replicate
  doc: Dereplicate sequences and remove barcodes
  type: string
  inputBinding:
    position: 8
- id: discover
  doc: Discover candidate new V genes within a single antibody library
  type: string
  inputBinding:
    position: 9
- id: discover_jd
  doc: Discover D and J genes
  type: string
  inputBinding:
    position: 10
- id: error_plot
  doc: Plot histograms of differences to reference V gene
  type: string
  inputBinding:
    position: 11
- id: filter
  doc: Filter table with parsed IgBLAST results
  type: string
  inputBinding:
    position: 12
- id: germline_filter
  doc: Filter V gene candidates (germline and pre-germline filter)
  type: string
  inputBinding:
    position: 13
- id: group
  doc: Group sequences that share a unique molecular identifier (UMI, barcode)
  type: string
  inputBinding:
    position: 14
- id: haplotype
  doc: Determine haplotypes based on co-occurrences of alleles
  type: string
  inputBinding:
    position: 15
- id: i_gb_last
  doc: Run IgBLAST and output a result table
  type: string
  inputBinding:
    position: 16
- id: in_it
  doc: Create and initialize a new analysis directory.
  type: string
  inputBinding:
    position: 17
- id: merge
  doc: Merge paired-end reads (a wrapper around PEAR)
  type: string
  inputBinding:
    position: 18
- id: multi_discover
  doc: Find V gene sister sequences shared by multiple libraries.
  type: string
  inputBinding:
    position: 19
- id: plot_alleles
  doc: Plot allele usage
  type: string
  inputBinding:
    position: 20
- id: rename
  doc: Rename and reorder records in a FASTA file
  type: string
  inputBinding:
    position: 21
- id: run
  doc: Run IgDiscover
  type: string
  inputBinding:
    position: 22
- id: union
  doc: Compute union of sequences in multiple FASTA files
  type: string
  inputBinding:
    position: 23
- id: upstream
  doc: Cluster upstream sequences (UTR and leader) for each gene
  type: string
  inputBinding:
    position: 24
- id: profile
  doc: Save profiling information to igdiscover.prof
  type: boolean
  inputBinding:
    prefix: --profile
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- discover
- table
