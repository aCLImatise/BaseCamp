class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kmergenie.cwl
inputs:
- id: diploid
  doc: 'use the diploid model (default: haploid model)'
  type: boolean
  inputBinding:
    prefix: --diploid
- id: one_pass
  doc: 'skip the second pass to estimate k at 2 bp resolution (default: two passes)'
  type: boolean
  inputBinding:
    prefix: --one-pass
- id: largest_kmer_size
  doc: 'largest k-mer size to consider (default: 121)'
  type: string
  inputBinding:
    prefix: -k
- id: smallest_kmer_size
  doc: 'smallest k-mer size to consider (default: 15)'
  type: string
  inputBinding:
    prefix: -l
- id: interval_consecutive_kmer
  doc: 'interval between consecutive kmer sizes (default: 10)'
  type: string
  inputBinding:
    prefix: -s
- id: kmer_sampling_value
  doc: 'k-mer sampling value (default: auto-detected to use ~200 MB memory/thread)'
  type: string
  inputBinding:
    prefix: -e
- id: number_threads_default
  doc: 'number of threads (default: number of cores minus one)'
  type: string
  inputBinding:
    prefix: -t
- id: prefix_output_files
  doc: 'prefix of the output files (default: histograms)'
  type: string
  inputBinding:
    prefix: -o
- id: debug
  doc: developer output of R scripts
  type: boolean
  inputBinding:
    prefix: --debug
- id: read_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kmergenie
