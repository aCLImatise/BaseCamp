class: CommandLineTool
id: ../../../alignGFA.cwl
inputs:
- id: load_tigs_tgstore
  doc: v         Load tigs from tgStore 't', version 'v'.
  type: string
  inputBinding:
    prefix: -T
- id: bed_format_source
  doc: v         For BED format, the source of the 'chromosomes'.  Similar to -T.
    Consensus sequence must exist for -T and -C (usually in v=2)
  type: string
  inputBinding:
    prefix: -C
- id: input_graph
  doc: Input graph.
  type: string
  inputBinding:
    prefix: -i
- id: output_graph_graph
  doc: Output graph. Graph are either GFA (v1) or BED format.
  type: string
  inputBinding:
    prefix: -o
- id: gfa
  doc: The input and output graphs are in GFA (v1) format.
  type: boolean
  inputBinding:
    prefix: -gfa
- id: bed
  doc: The input graph is in BED format.  If -C is supplied, the output will also
    be BED, and will have updated positions. If -C is not supplied, the output will
    be GFA (v1) of the overlaps inferred from the BED positions.
  type: boolean
  inputBinding:
    prefix: -bed
- id: increase_chatter
  doc: Increase chatter.
  type: boolean
  inputBinding:
    prefix: -V
- id: use_computational_threads
  doc: Use 'threads' computational threads.
  type: string
  inputBinding:
    prefix: -t
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- alignGFA
