class: CommandLineTool
id: tracy_assemble.cwl
inputs:
- id: in_arg_referenceguided_optional
  doc: '[ --reference ] arg              reference-guided assembly (optional)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_peak_ratio
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call base'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_t
  doc: '[ --trim ] arg (=4)              trimming stringency [1:9]'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_f
  doc: '[ --fracmatch ] arg (=0.5)       min. fraction of matches [0:1]'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_gap_open
  doc: '[ --gapopen ] arg (=-10)         gap open'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_gap_extension
  doc: '[ --gapext ] arg (=-4)           gap extension'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in__arg_match
  doc: '[ --match ] arg (=3)             match'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__arg_mismatch
  doc: '[ --mismatch ] arg (=-5)         mismatch'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_fraction_traces
  doc: '[ --called ] arg (=0.100000001)  fraction of traces required for consensus'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_output_prefix
  doc: '[ --outprefix ] arg (=out)       output prefix'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_include_consensus_fasta
  doc: '[ --inccons ]                    include consensus in FASTA align'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_generic
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tracy:0.5.8--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- tracy
- assemble
