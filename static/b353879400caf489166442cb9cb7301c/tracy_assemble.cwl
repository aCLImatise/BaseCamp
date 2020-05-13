class: CommandLineTool
id: tracy_assemble.cwl
inputs:
- id: r
  doc: '[ --reference ] arg              reference-guided assembly (optional)'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call base'
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: '[ --trim ] arg (=4)              trimming stringency [1:9]'
  type: boolean
  inputBinding:
    prefix: -t
- id: f
  doc: '[ --fracmatch ] arg (=0.5)       min. fraction of matches [0:1]'
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: '[ --gapopen ] arg (=-10)         gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: '[ --gapext ] arg (=-4)           gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: '[ --match ] arg (=3)             match'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[ --mismatch ] arg (=-5)         mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: d
  doc: '[ --called ] arg (=0.100000001)  fraction of traces required for consensus'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: '[ --outprefix ] arg (=out)       output prefix'
  type: boolean
  inputBinding:
    prefix: -o
- id: i
  doc: '[ --inccons ]                    include consensus in FASTA align'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- assemble
