class: CommandLineTool
id: kmergenie.cwl
inputs:
- id: in_diploid
  doc: 'use the diploid model (default: haploid model)'
  type: boolean?
  inputBinding:
    prefix: --diploid
- id: in_one_pass
  doc: 'skip the second pass to estimate k at 2 bp resolution (default: two passes)'
  type: boolean?
  inputBinding:
    prefix: --one-pass
- id: in_largest_kmer_size
  doc: 'largest k-mer size to consider (default: 121)'
  type: long?
  inputBinding:
    prefix: -k
- id: in_smallest_kmer_size
  doc: 'smallest k-mer size to consider (default: 15)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_interval_consecutive_kmer
  doc: 'interval between consecutive kmer sizes (default: 10)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_kmer_sampling_value
  doc: 'k-mer sampling value (default: auto-detected to use ~200 MB memory/thread)'
  type: long?
  inputBinding:
    prefix: -e
- id: in_number_default_number
  doc: 'number of threads (default: number of cores minus one)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_prefix_default_histograms
  doc: 'prefix of the output files (default: histograms)'
  type: string?
  inputBinding:
    prefix: -o
- id: in_debug
  doc: developer output of R scripts
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kmergenie
