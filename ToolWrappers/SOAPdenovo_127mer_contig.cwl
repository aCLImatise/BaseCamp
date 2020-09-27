class: CommandLineTool
id: SOAPdenovo_127mer_contig.cwl
inputs:
- id: in_inputgraph_prefix_input
  doc: 'inputGraph: prefix of input graph file names'
  type: File
  inputBinding:
    prefix: -g
- id: in_optional_resolve_repeats
  doc: (optional)    resolve repeats using information generated in pregraph step,
    works only if -R is set in pregraph step too, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: in_mergelevelmin_max_strength
  doc: 'mergeLevel(min 0, max 3): the strength of merging similar sequences during
    contiging, [1]'
  type: long
  inputBinding:
    prefix: -M
- id: in_edgecovcutoff_edges_shorter
  doc: 'EdgeCovCutoff: edges shorter than (2*K+1) with coverage no larger than EdgeCovCutoff
    will be deleted, [1]'
  type: long
  inputBinding:
    prefix: -D
- id: in_two_edges_arcs
  doc: "arcWeight: two edges, between which the arc's weight is larger than arcWeight,\
    \ will be linerized, [0]"
  type: long
  inputBinding:
    prefix: -e
- id: in_max_k_when
  doc: max k when using multi-kmer, and the parameters below are used along with multi-kmer,
    [NO]
  type: long
  inputBinding:
    prefix: -m
- id: in_readsinfofilethe_file_contains
  doc: readsInfoFile:The file contains information of solexa reads(It's necessary
    when using multi-kmer)
  type: File
  inputBinding:
    prefix: -s
- id: in_number_of_cpu
  doc: number of cpu, [8]
  type: long
  inputBinding:
    prefix: -p
- id: in_optional_merge_bubble
  doc: (optional)    merge clean bubble before iterate, works only if -M is set when
    using multi-kmer, [NO]
  type: boolean
  inputBinding:
    prefix: -E
- id: in_contig
  doc: contig -g InputGraph [-R] [-M mergeLevel -D EdgeCovCutoff] [-s readsInfoFile
    -m maxkmer -p n_cpu -r]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-127mer
- contig
