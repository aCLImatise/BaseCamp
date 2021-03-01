class: CommandLineTool
id: postprocessing.AMPS.r.cwl
inputs:
- id: in_rmaexdotoutdotfld
  doc: MALTextract output folder.
  type: Directory?
  inputBinding:
    prefix: --rmaex.out.fld
- id: in_malte_x_dot_filter
  doc: "MALTextract filter mode: <default,def_anc>. This script is not designed for\
    \ 'scan' output. Default: <def_anc>."
  type: boolean?
  inputBinding:
    prefix: --maltex.filter
- id: in_threads
  doc: Max number of cores used.
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_node_dot_list
  doc: List (\n separated) of nodes to be reported on (aka input species/node list
    used for MALTextract).
  type: boolean?
  inputBinding:
    prefix: --node.list
- id: in_heat_map_dot_json
  doc: Optional exporting of heatmap data in json format.
  type: boolean?
  inputBinding:
    prefix: --heatmap.json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rmaexdotoutdotfld
  doc: MALTextract output folder.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_rmaexdotoutdotfld)
hints: []
cwlVersion: v1.1
baseCommand:
- postprocessing.AMPS.r
