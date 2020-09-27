class: CommandLineTool
id: abruijn_repeat.cwl
inputs:
- id: in_kmer_size
  doc: k-mer size [default = 15]
  type: long
  inputBinding:
    prefix: -k
- id: in_minimum_overlap_reads
  doc: minimum overlap between reads [default = 5000]
  type: long
  inputBinding:
    prefix: -v
- id: in_enable_debug_output
  doc: enable debug output [default = false]
  type: boolean
  inputBinding:
    prefix: -d
- id: in_output_log_file
  doc: output log to file [default = not set]
  type: File
  inputBinding:
    prefix: -l
- id: in_number_parallel_threads
  doc: number of parallel threads [default = 1]
  type: long
  inputBinding:
    prefix: -t
- id: in_in_assembly
  doc: path to input assembly
  type: string
  inputBinding:
    position: 0
- id: in_out_assembly
  doc: path to output assembly
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_log_file
  doc: output log to file [default = not set]
  type: File
  outputBinding:
    glob: $(inputs.in_output_log_file)
cwlVersion: v1.1
baseCommand:
- abruijn-repeat
