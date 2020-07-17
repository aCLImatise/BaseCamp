class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SOAPdenovo_Trans_127mer_contig.cwl
inputs:
- id: string_inputgraph_prefix
  doc: '<string>        inputGraph: prefix of input graph file name'
  type: boolean
  inputBinding:
    prefix: -g
- id: int_edgecovcutoff_edges
  doc: '<int>           EdgeCovCutoff: edges with coverage no larger than EdgeCovCutoff
    will be deleted, [2]'
  type: boolean
  inputBinding:
    prefix: -e
- id: int_mergelevelmin_max
  doc: '<int>           mergeLevel(min 0, max 3): the strength of merging similar
    sequences during contiging, [1]'
  type: boolean
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-Trans-127mer
- contig
