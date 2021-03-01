class: CommandLineTool
id: abruijn_assemble.cwl
inputs:
- id: in_kmer_size
  doc: k-mer size [default = 15]
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimum_kmer_coverage
  doc: minimum k-mer coverage [default = auto]
  type: string?
  inputBinding:
    prefix: -m
- id: in_maximum_kmer_coverage
  doc: maximum k-mer coverage [default = auto]
  type: long?
  inputBinding:
    prefix: -x
- id: in_minimum_overlap_reads
  doc: minimum overlap between reads [default = 5000]
  type: long?
  inputBinding:
    prefix: -v
- id: in_enable_debug_output
  doc: enable debug output [default = false]
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_output_log_file
  doc: output log to file [default = not set]
  type: File?
  inputBinding:
    prefix: -l
- id: in_storeload_overlaps_tofrom
  doc: store/load overlaps to/from file [default = not set]
  type: File?
  inputBinding:
    prefix: -o
- id: in_number_parallel_threads
  doc: number of parallel threads [default = 1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_out_assembly
  doc: path to output file
  type: string
  inputBinding:
    position: 0
- id: in_coverage
  doc: estimated assembly coverage
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_log_file
  doc: output log to file [default = not set]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- abruijn-assemble
