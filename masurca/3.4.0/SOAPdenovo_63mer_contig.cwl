class: CommandLineTool
id: SOAPdenovo_63mer_contig.cwl
inputs:
- id: g
  doc: 'inputGraph: prefix of input graph file names'
  type: string
  inputBinding:
    prefix: -g
- id: r
  doc: (optional)    resolve repeats using information generated in pregraph step,
    works only if -R is set in pregraph step too, [NO]
  type: boolean
  inputBinding:
    prefix: -R
- id: m
  doc: 'mergeLevel(min 0, max 3): the strength of merging similar sequences during
    contiging, [1]'
  type: long
  inputBinding:
    prefix: -M
- id: d
  doc: 'EdgeCovCutoff: edges shorter than (2*K+1) with coverage no larger than EdgeCovCutoff
    will be deleted, [1]'
  type: long
  inputBinding:
    prefix: -D
- id: e
  doc: "arcWeight: two edges, between which the arc's weight is larger than arcWeight,\
    \ will be linerized, [0]"
  type: long
  inputBinding:
    prefix: -e
- id: m
  doc: max k when using multi-kmer, and the parameters below are used along with multi-kmer,
    [NO]
  type: long
  inputBinding:
    prefix: -m
- id: s
  doc: readsInfoFile:The file contains information of solexa reads(It's necessary
    when using multi-kmer)
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: number of cpu, [8]
  type: long
  inputBinding:
    prefix: -p
- id: e
  doc: (optional)    merge clean bubble before iterate, works only if -M is set when
    using multi-kmer, [NO]
  type: boolean
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- SOAPdenovo-63mer
- contig
