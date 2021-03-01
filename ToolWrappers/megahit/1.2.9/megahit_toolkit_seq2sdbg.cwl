class: CommandLineTool
id: megahit_toolkit_seq2sdbg.cwl
inputs:
- id: in_host_mem
  doc: (=0)                memory to be used. No more than 95% of the free memory
    is recommended. 0 for auto detect.
  type: long?
  inputBinding:
    prefix: --host_mem
- id: in_km_er_size
  doc: (=0)               kmer size
  type: long?
  inputBinding:
    prefix: --kmer_size
- id: in_km_er_from
  doc: (=0)               previous k
  type: long?
  inputBinding:
    prefix: --kmer_from
- id: in_num_cpu_threads
  doc: (=0)         number of CPU threads. At least 2.
  type: long?
  inputBinding:
    prefix: --num_cpu_threads
- id: in_contig
  doc: contigs from previous k
  type: string?
  inputBinding:
    prefix: --contig
- id: in_bubble
  doc: bubble sequence from previous k
  type: string?
  inputBinding:
    prefix: --bubble
- id: in_add_i_contig
  doc: additional contigs from previous k
  type: string?
  inputBinding:
    prefix: --addi_contig
- id: in_local_contig
  doc: local contigs from previous k
  type: string?
  inputBinding:
    prefix: --local_contig
- id: in_input_prefix
  doc: files input_prefix.edges.* output by count module, can be gzip'ed.
  type: string?
  inputBinding:
    prefix: --input_prefix
- id: in_output_prefix
  doc: output prefix
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_need_mercy
  doc: to add mercy edges. The file input_prefix.cand output by count module should
    exist.
  type: boolean?
  inputBinding:
    prefix: --need_mercy
- id: in_mem_flag
  doc: "(=1)                memory options. 0: minimize memory usage; 1: automatically\
    \ use moderate memory; other: use all available mem specified by '--host_mem'"
  type: long?
  inputBinding:
    prefix: --mem_flag
- id: in_s_dbg_builder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_two_s_dbg
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- megahit_toolkit
- seq2sdbg
