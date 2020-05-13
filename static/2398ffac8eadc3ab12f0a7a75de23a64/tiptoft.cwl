class: CommandLineTool
id: tiptoft.cwl
inputs:
- id: plasmid_data
  doc: 'FASTA file containing plasmid data from downloader script, defaults to bundled
    database (default: None)'
  type: string
  inputBinding:
    prefix: --plasmid_data
- id: km_er
  doc: 'k-mer size (default: 13)'
  type: string
  inputBinding:
    prefix: --kmer
- id: filtered_reads_file
  doc: 'Filename to save matching reads to (default: None)'
  type: string
  inputBinding:
    prefix: --filtered_reads_file
- id: output_file
  doc: 'Output file [STDOUT] (default: None)'
  type: string
  inputBinding:
    prefix: --output_file
- id: print_interval
  doc: 'Print results every this number of reads (default: None)'
  type: string
  inputBinding:
    prefix: --print_interval
- id: verbose
  doc: Turn on debugging [False]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_hc_compression
  doc: 'Turn off homoploymer compression of k-mers (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_hc_compression
- id: no_gene_filter
  doc: 'Dont filter out lower coverage genes from same group (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_gene_filter
- id: max_gap
  doc: 'Maximum gap for blocks to be contigous, measured in multiples of the k-mer
    size (default: 3)'
  type: long
  inputBinding:
    prefix: --max_gap
- id: max_km_er_count
  doc: 'Exclude k-mers which occur more than this number of times in a sequence (default:
    10)'
  type: long
  inputBinding:
    prefix: --max_kmer_count
- id: margin
  doc: 'Flanking region around a block to use for mapping (default: 10)'
  type: string
  inputBinding:
    prefix: --margin
- id: min_block_size
  doc: 'Minimum block size in bases (default: 50)'
  type: long
  inputBinding:
    prefix: --min_block_size
- id: min_fast_a_hits
  doc: 'Minimum No. of kmers matching a read (default: 8)'
  type: long
  inputBinding:
    prefix: --min_fasta_hits
- id: min_perc_coverage
  doc: 'Minimum percentage coverage of typing sequence to report (default: 85)'
  type: long
  inputBinding:
    prefix: --min_perc_coverage
- id: min_km_ers_for_one_x_pass
  doc: 'Minimum No. of kmers matching a read in 1st pass (default: 5)'
  type: long
  inputBinding:
    prefix: --min_kmers_for_onex_pass
outputs: []
cwlVersion: v1.1
baseCommand:
- tiptoft
