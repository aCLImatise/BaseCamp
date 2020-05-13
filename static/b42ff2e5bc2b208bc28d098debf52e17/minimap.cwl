class: CommandLineTool
id: minimap.cwl
inputs:
- id: k
  doc: k-mer size [15]
  type: long
  inputBinding:
    prefix: -k
- id: w
  doc: minizer window size [{-k}*2/3]
  type: long
  inputBinding:
    prefix: -w
- id: i
  doc: split index for every ~NUM input bases [4G]
  type: string
  inputBinding:
    prefix: -I
- id: d
  doc: dump index to FILE []
  type: File
  inputBinding:
    prefix: -d
- id: l
  doc: the 1st argument is a index file (overriding -k, -w and -I)
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: filter out top FLOAT fraction of repetitive minimizers [0.001]
  type: double
  inputBinding:
    prefix: -f
- id: r
  doc: bandwidth [500]
  type: long
  inputBinding:
    prefix: -r
- id: m
  doc: merge two chains if FLOAT fraction of minimizers are shared [0.50]
  type: double
  inputBinding:
    prefix: -m
- id: c
  doc: retain a mapping if it consists of >=INT minimizers [4]
  type: long
  inputBinding:
    prefix: -c
- id: l
  doc: min matching length [40]
  type: long
  inputBinding:
    prefix: -L
- id: g
  doc: split a mapping if there is a gap longer than INT [10000]
  type: long
  inputBinding:
    prefix: -g
- id: t
  doc: SDUST threshold; 0 to disable SDUST [0]
  type: long
  inputBinding:
    prefix: -T
- id: s
  doc: skip self and dual mappings
  type: boolean
  inputBinding:
    prefix: -S
- id: o
  doc: drop isolated hits before chaining (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: -O
- id: p
  doc: filtering potential repeats after mapping (EXPERIMENTAL)
  type: boolean
  inputBinding:
    prefix: -P
- id: x
  doc: 'preset (recommended to be applied before other options) [] ava10k: -Sw5 -L100
    -m0 (PacBio/ONT all-vs-all read mapping)'
  type: string
  inputBinding:
    prefix: -x
- id: t
  doc: number of threads [3]
  type: long
  inputBinding:
    prefix: -t
- id: v
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap
