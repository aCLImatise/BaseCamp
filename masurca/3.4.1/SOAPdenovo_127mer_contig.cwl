class: CommandLineTool
id: ../../../SOAPdenovo_127mer_contig.cwl
inputs:
- id: inputgraph_prefix_input
  doc: 'inputGraph: prefix of input graph file names'
  type: string
  inputBinding:
    prefix: -g
- id: optional_resolve_repeats
  doc: (optional)    resolve repeats using information generated in pregraph step,
    works only if -R is set in pregraph step too, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: mergelevelmin_max_strength
  doc: 'mergeLevel(min 0, max 3): the strength of merging similar sequences during
    contiging, [1]'
  type: long
  inputBinding:
    prefix: -M
- id: edgecovcutoff_edges_shorter
  doc: 'EdgeCovCutoff: edges shorter than (2*K+1) with coverage no larger than EdgeCovCutoff
    will be deleted, [1]'
  type: long
  inputBinding:
    prefix: -D
- id: two_edges_arcs
  doc: "arcWeight: two edges, between which the arc's weight is larger than arcWeight,\
    \ will be linerized, [0]"
  type: long
  inputBinding:
    prefix: -e
- id: max_k_using
  doc: max k when using multi-kmer, and the parameters below are used along with multi-kmer,
    [NO]
  type: long
  inputBinding:
    prefix: -m
- id: readsinfofilethe_file_contains
  doc: readsInfoFile:The file contains information of solexa reads(It's necessary
    when using multi-kmer)
  type: string
  inputBinding:
    prefix: -s
- id: number_of_cpu
  doc: number of cpu, [8]
  type: long
  inputBinding:
    prefix: -p
- id: optional_merge_bubble
  doc: (optional)    merge clean bubble before iterate, works only if -M is set when
    using multi-kmer, [NO]
  type: boolean
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- contig
