class: CommandLineTool
id: ../../../tiptoft.cwl
inputs:
- id: in_plasmid_data
  doc: "FASTA file containing plasmid data from downloader\nscript, defaults to bundled\
    \ database (default: None)"
  type: File
  inputBinding:
    prefix: --plasmid_data
- id: in_km_er
  doc: 'k-mer size (default: 13)'
  type: long
  inputBinding:
    prefix: --kmer
- id: in_filtered_reads_file
  doc: 'Filename to save matching reads to (default: None)'
  type: File
  inputBinding:
    prefix: --filtered_reads_file
- id: in_output_file
  doc: 'Output file [STDOUT] (default: None)'
  type: File
  inputBinding:
    prefix: --output_file
- id: in_print_interval
  doc: "Print results every this number of reads (default:\nNone)"
  type: long
  inputBinding:
    prefix: --print_interval
- id: in_verbose
  doc: Turn on debugging [False]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_no_hc_compression
  doc: "Turn off homoploymer compression of k-mers (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --no_hc_compression
- id: in_no_gene_filter
  doc: "Dont filter out lower coverage genes from same group\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --no_gene_filter
- id: in_max_gap
  doc: "Maximum gap for blocks to be contigous, measured in\nmultiples of the k-mer\
    \ size (default: 3)"
  type: long
  inputBinding:
    prefix: --max_gap
- id: in_max_km_er_count
  doc: "Exclude k-mers which occur more than this number of\ntimes in a sequence (default:\
    \ 10)"
  type: long
  inputBinding:
    prefix: --max_kmer_count
- id: in_margin
  doc: "Flanking region around a block to use for mapping\n(default: 10)"
  type: long
  inputBinding:
    prefix: --margin
- id: in_min_block_size
  doc: 'Minimum block size in bases (default: 50)'
  type: long
  inputBinding:
    prefix: --min_block_size
- id: in_min_fast_a_hits
  doc: 'Minimum No. of kmers matching a read (default: 8)'
  type: long
  inputBinding:
    prefix: --min_fasta_hits
- id: in_min_perc_coverage
  doc: "Minimum percentage coverage of typing sequence to\nreport (default: 85)"
  type: long
  inputBinding:
    prefix: --min_perc_coverage
- id: in_min_km_ers_for_one_x_pass
  doc: "Minimum No. of kmers matching a read in 1st pass\n(default: 5)\n"
  type: long
  inputBinding:
    prefix: --min_kmers_for_onex_pass
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file [STDOUT] (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- tiptoft
