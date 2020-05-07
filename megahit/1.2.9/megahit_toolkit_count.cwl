class: CommandLineTool
id: megahit_toolkit_count.cwl
inputs:
- id: s_dbg_builder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: count
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: km_er_k
  doc: (=21)                 kmer size
  type: string
  inputBinding:
    prefix: --kmer_k
- id: min_km_er_frequency
  doc: (=2)      min frequency to output an edge
  type: string
  inputBinding:
    prefix: --min_kmer_frequency
- id: host_mem
  doc: (=0)                Max memory to be used. 90% of the free memory is recommended.
  type: string
  inputBinding:
    prefix: --host_mem
- id: num_cpu_threads
  doc: (=0)         number of CPU threads. At least 2.
  type: string
  inputBinding:
    prefix: --num_cpu_threads
- id: read_lib_file
  doc: read library configuration file.
  type: string
  inputBinding:
    prefix: --read_lib_file
- id: output_prefix
  doc: (=out)         output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: mem_flag
  doc: "(=1)                memory options. 0: minimize memory usage; 1: automatically\
    \ use moderate memory; other: use all available mem specified by '--host_mem'"
  type: string
  inputBinding:
    prefix: --mem_flag
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_toolkit
- count
