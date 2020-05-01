#!/usr/bin/env cwl-runner

baseCommand:
- krocus
class: CommandLineTool
cwlVersion: v1.0
id: krocus
inputs:
- doc: 'Filename to save matching reads to (default: None)'
  id: filtered_reads_file
  inputBinding:
    prefix: --filtered_reads_file
  type: string
- doc: 'Output file [STDOUT] (default: None)'
  id: output_file
  inputBinding:
    prefix: --output_file
  type: string
- doc: 'Maximum gap for blocks to be contigous, measured in multiples of the k-mer
    size (default: 4)'
  id: max_gap
  inputBinding:
    prefix: --max_gap
  type: long
- doc: 'Flanking region around a block to use for mapping (default: 50)'
  id: margin
  inputBinding:
    prefix: --margin
  type: string
- doc: 'Minimum block size in bases (default: 150)'
  id: min_block_size
  inputBinding:
    prefix: --min_block_size
  type: long
- doc: 'Minimum No. of kmers matching a read (default: 10)'
  id: min_fast_a_hits
  inputBinding:
    prefix: --min_fasta_hits
  type: long
- doc: 'Minimum No. of kmers matching a read in 1st pass (default: 10)'
  id: min_km_ers_for_one_x_pass
  inputBinding:
    prefix: --min_kmers_for_onex_pass
  type: long
- doc: 'Dont count kmers occuring more than this many times (default: 10)'
  id: max_km_ers
  inputBinding:
    prefix: --max_kmers
  type: long
- doc: 'Print ST every this number of reads (default: 500)'
  id: print_interval
  inputBinding:
    prefix: --print_interval
  type: string
- doc: 'k-mer size (default: 11)'
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: 'Genes which are not divisible by 3 are excluded (default: False)'
  id: divisible_by_3
  inputBinding:
    prefix: --divisible_by_3
  type: boolean
- doc: 'For performance testing print time to find given ST (default: None)'
  id: target_st
  inputBinding:
    prefix: --target_st
  type: string
- doc: Turn on debugging [False]
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
