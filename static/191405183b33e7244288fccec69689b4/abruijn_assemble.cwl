class: CommandLineTool
id: ../../../abruijn_assemble.cwl
inputs:
- id: kmer_size_
  doc: 'k-mer size [default = 15] '
  type: string
  inputBinding:
    prefix: -k
- id: minimum_kmer_coverage
  doc: 'minimum k-mer coverage [default = auto] '
  type: long
  inputBinding:
    prefix: -m
- id: maximum_kmer_coverage
  doc: 'maximum k-mer coverage [default = auto] '
  type: long
  inputBinding:
    prefix: -x
- id: minimum_overlap_reads
  doc: 'minimum overlap between reads [default = 5000] '
  type: long
  inputBinding:
    prefix: -v
- id: enable_debug_output
  doc: 'enable debug output [default = false] '
  type: boolean
  inputBinding:
    prefix: -d
- id: output_log_file
  doc: 'output log to file [default = not set] '
  type: string
  inputBinding:
    prefix: -l
- id: storeload_overlaps_file
  doc: 'store/load overlaps to/from file [default = not set] '
  type: string
  inputBinding:
    prefix: -o
- id: number_parallel_threads
  doc: 'number of parallel threads [default = 1] '
  type: string
  inputBinding:
    prefix: -t
- id: out_assembly
  doc: path to output file
  type: string
  inputBinding:
    position: 0
- id: coverage
  doc: estimated assembly coverage
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn-assemble
