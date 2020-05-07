class: CommandLineTool
id: megahit_core_no_hw_accel_seq2sdbg.cwl
inputs:
- id: s_dbg_builder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq2sdbg
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: host_mem
  doc: (=0)                memory to be used. No more than 95% of the free memory
    is recommended. 0 for auto detect.
  type: string
  inputBinding:
    prefix: --host_mem
- id: km_er_size
  doc: (=0)               kmer size
  type: string
  inputBinding:
    prefix: --kmer_size
- id: km_er_from
  doc: (=0)               previous k
  type: string
  inputBinding:
    prefix: --kmer_from
- id: num_cpu_threads
  doc: (=0)         number of CPU threads. At least 2.
  type: string
  inputBinding:
    prefix: --num_cpu_threads
- id: contig
  doc: contigs from previous k
  type: string
  inputBinding:
    prefix: --contig
- id: bubble
  doc: bubble sequence from previous k
  type: string
  inputBinding:
    prefix: --bubble
- id: add_i_contig
  doc: additional contigs from previous k
  type: string
  inputBinding:
    prefix: --addi_contig
- id: local_contig
  doc: local contigs from previous k
  type: string
  inputBinding:
    prefix: --local_contig
- id: input_prefix
  doc: files input_prefix.edges.* output by count module, can be gzip'ed.
  type: string
  inputBinding:
    prefix: --input_prefix
- id: output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: need_mercy
  doc: to add mercy edges. The file input_prefix.cand output by count module should
    exist.
  type: boolean
  inputBinding:
    prefix: --need_mercy
- id: mem_flag
  doc: "(=1)                memory options. 0: minimize memory usage; 1: automatically\
    \ use moderate memory; other: use all available mem specified by '--host_mem'"
  type: string
  inputBinding:
    prefix: --mem_flag
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_core_no_hw_accel
- seq2sdbg
