class: CommandLineTool
id: megagta_denovo.cwl
inputs:
- id: in_s_dbg_name
  doc: succinct de Bruijn graph name
  type: string
  inputBinding:
    prefix: --sdbg_name
- id: in_output_prefix
  doc: (=out)         output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_num_cpu_threads
  doc: (=0)         number of cpu threads
  type: long
  inputBinding:
    prefix: --num_cpu_threads
- id: in_max_tip_len
  doc: (=-1)            max length for tips to be removed. -1 for 2k
  type: long
  inputBinding:
    prefix: --max_tip_len
- id: in_no_bubble
  doc: do not remove bubbles
  type: boolean
  inputBinding:
    prefix: --no_bubble
- id: in_min_standalone
  doc: (=400)        min length of a standalone contig to output to final.contigs.fa
  type: long
  inputBinding:
    prefix: --min_standalone
- id: in_min_contig
  doc: (=0)              min length of contig to output
  type: long
  inputBinding:
    prefix: --min_contig
- id: in_de_novo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megagta
- denovo
