class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abruijn_repeat.cwl
inputs:
- id: kmer_size_
  doc: 'k-mer size [default = 15] '
  type: string
  inputBinding:
    prefix: -k
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
- id: number_parallel_threads
  doc: 'number of parallel threads [default = 1] '
  type: string
  inputBinding:
    prefix: -t
- id: out_assembly
  doc: path to output assembly
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn-repeat
