class: CommandLineTool
id: ../../../tracy_assemble.cwl
inputs:
- id: arg_referenceguided_assembly
  doc: '[ --reference ] arg              reference-guided assembly (optional)'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_peak_ratio
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
- id: arg_gap_open
  doc: '[ --gapopen ] arg (=-10)         gap open'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_gap_extension
  doc: '[ --gapext ] arg (=-4)           gap extension'
  type: boolean
  inputBinding:
    prefix: -e
- id: _arg_match
  doc: '[ --match ] arg (=3)             match'
  type: boolean
  inputBinding:
    prefix: -m
- id: _arg_mismatch
  doc: '[ --mismatch ] arg (=-5)         mismatch'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_fraction_traces
  doc: '[ --called ] arg (=0.100000001)  fraction of traces required for consensus'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_output_prefix
  doc: '[ --outprefix ] arg (=out)       output prefix'
  type: boolean
  inputBinding:
    prefix: -o
- id: include_consensus_fasta
  doc: '[ --inccons ]                    include consensus in FASTA align'
  type: boolean
  inputBinding:
    prefix: -i
- id: generic
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- assemble
