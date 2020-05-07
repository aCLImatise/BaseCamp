class: CommandLineTool
id: krocus.cwl
inputs:
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
- id: max_gap
  doc: 'Maximum gap for blocks to be contigous, measured in multiples of the k-mer
    size (default: 4)'
  type: long
  inputBinding:
    prefix: --max_gap
- id: margin
  doc: 'Flanking region around a block to use for mapping (default: 50)'
  type: string
  inputBinding:
    prefix: --margin
- id: min_block_size
  doc: 'Minimum block size in bases (default: 150)'
  type: long
  inputBinding:
    prefix: --min_block_size
- id: min_fast_a_hits
  doc: 'Minimum No. of kmers matching a read (default: 10)'
  type: long
  inputBinding:
    prefix: --min_fasta_hits
- id: min_km_ers_for_one_x_pass
  doc: 'Minimum No. of kmers matching a read in 1st pass (default: 10)'
  type: long
  inputBinding:
    prefix: --min_kmers_for_onex_pass
- id: max_km_ers
  doc: 'Dont count kmers occuring more than this many times (default: 10)'
  type: long
  inputBinding:
    prefix: --max_kmers
- id: print_interval
  doc: 'Print ST every this number of reads (default: 500)'
  type: string
  inputBinding:
    prefix: --print_interval
- id: km_er
  doc: 'k-mer size (default: 11)'
  type: string
  inputBinding:
    prefix: --kmer
- id: divisible_by_3
  doc: 'Genes which are not divisible by 3 are excluded (default: False)'
  type: boolean
  inputBinding:
    prefix: --divisible_by_3
- id: target_st
  doc: 'For performance testing print time to find given ST (default: None)'
  type: string
  inputBinding:
    prefix: --target_st
- id: verbose
  doc: Turn on debugging [False]
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- krocus
