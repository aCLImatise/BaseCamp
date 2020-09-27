class: CommandLineTool
id: alignGFA.cwl
inputs:
- id: in_load_tigs_tgstore
  doc: v         Load tigs from tgStore 't', version 'v'.
  type: string
  inputBinding:
    prefix: -T
- id: in_bed_format_source
  doc: "v         For BED format, the source of the 'chromosomes'.  Similar to -T.\n\
    Consensus sequence must exist for -T and -C (usually in v=2)"
  type: long
  inputBinding:
    prefix: -C
- id: in_input_graph
  doc: Input graph.
  type: string
  inputBinding:
    prefix: -i
- id: in_output_graphgraph_gfa
  doc: "Output graph.\nGraph are either GFA (v1) or BED format."
  type: long
  inputBinding:
    prefix: -o
- id: in_gfa
  doc: The input and output graphs are in GFA (v1) format.
  type: boolean
  inputBinding:
    prefix: -gfa
- id: in_bed
  doc: "The input graph is in BED format.  If -C is supplied, the\noutput will also\
    \ be BED, and will have updated positions.\nIf -C is not supplied, the output\
    \ will be GFA (v1) of the\noverlaps inferred from the BED positions."
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_increase_chatter
  doc: Increase chatter.
  type: boolean
  inputBinding:
    prefix: -V
- id: in_use_computational_threads
  doc: Use 'threads' computational threads.
  type: string
  inputBinding:
    prefix: -t
- id: in_opts
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
- alignGFA
