class: CommandLineTool
id: ../../../krocus.cwl
inputs:
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
- id: in_max_gap
  doc: "Maximum gap for blocks to be contigous, measured in\nmultiples of the k-mer\
    \ size (default: 4)"
  type: long
  inputBinding:
    prefix: --max_gap
- id: in_margin
  doc: "Flanking region around a block to use for mapping\n(default: 50)"
  type: long
  inputBinding:
    prefix: --margin
- id: in_min_block_size
  doc: 'Minimum block size in bases (default: 150)'
  type: long
  inputBinding:
    prefix: --min_block_size
- id: in_min_fast_a_hits
  doc: 'Minimum No. of kmers matching a read (default: 10)'
  type: long
  inputBinding:
    prefix: --min_fasta_hits
- id: in_min_km_ers_for_one_x_pass
  doc: "Minimum No. of kmers matching a read in 1st pass\n(default: 10)"
  type: long
  inputBinding:
    prefix: --min_kmers_for_onex_pass
- id: in_max_km_ers
  doc: "Dont count kmers occuring more than this many times\n(default: 10)"
  type: long
  inputBinding:
    prefix: --max_kmers
- id: in_print_interval
  doc: 'Print ST every this number of reads (default: 500)'
  type: long
  inputBinding:
    prefix: --print_interval
- id: in_km_er
  doc: 'k-mer size (default: 11)'
  type: long
  inputBinding:
    prefix: --kmer
- id: in_divisible_by_three
  doc: "Genes which are not divisible by 3 are excluded\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --divisible_by_3
- id: in_target_st
  doc: "For performance testing print time to find given ST\n(default: None)"
  type: string
  inputBinding:
    prefix: --target_st
- id: in_verbose
  doc: Turn on debugging [False]
  type: boolean
  inputBinding:
    prefix: --verbose
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
- krocus
