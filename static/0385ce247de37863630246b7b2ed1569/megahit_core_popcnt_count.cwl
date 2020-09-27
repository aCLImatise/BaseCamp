class: CommandLineTool
id: megahit_core_popcnt_count.cwl
inputs:
- id: in_km_er_k
  doc: (=21)                 kmer size
  type: long
  inputBinding:
    prefix: --kmer_k
- id: in_min_km_er_frequency
  doc: (=2)      min frequency to output an edge
  type: long
  inputBinding:
    prefix: --min_kmer_frequency
- id: in_host_mem
  doc: (=0)                Max memory to be used. 90% of the free memory is recommended.
  type: long
  inputBinding:
    prefix: --host_mem
- id: in_num_cpu_threads
  doc: (=0)         number of CPU threads. At least 2.
  type: long
  inputBinding:
    prefix: --num_cpu_threads
- id: in_read_lib_file
  doc: read library configuration file.
  type: File
  inputBinding:
    prefix: --read_lib_file
- id: in_output_prefix
  doc: (=out)         output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_mem_flag
  doc: "(=1)                memory options. 0: minimize memory usage; 1: automatically\
    \ use moderate memory; other: use all available mem specified by '--host_mem'"
  type: long
  inputBinding:
    prefix: --mem_flag
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_input_file
  doc: ''
  type: File
  inputBinding:
    prefix: --input_file
- id: in_s_dbg_builder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_count
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megahit_core_popcnt
- count
