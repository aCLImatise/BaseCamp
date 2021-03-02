class: CommandLineTool
id: alfred_pwalign.cwl
inputs:
- id: in_arg_gap_open
  doc: '[ --gapopen ] arg (=-10)           gap open'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_gap_extension
  doc: '[ --gapext ] arg (=-1)             gap extension'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in__arg_match
  doc: '[ --match ] arg (=5)               match'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__arg_mismatch
  doc: '[ --mismatch ] arg (=-4)           mismatch'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_p
  doc: '[ --endsfree1 ]                    leading/trailing gaps free for seq1'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_q
  doc: '[ --endsfree2 ]                    leading/trailing gaps free for seq2'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__local_alignment
  doc: '[ --local ]                        local alignment'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_allow_ambiguity_codes
  doc: '[ --ambiguous ]                    allow IUPAC ambiguity codes'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_f
  doc: '[ --format ] arg (=h)              output format [v|h]'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_verticalhorizontal_alignment
  doc: '[ --alignment ] arg (="al.fa.gz")  vertical/horizontal alignment'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_seq_one_dot_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_seq_two_dot_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alfred:0.2.3--hf3ca161_0
cwlVersion: v1.1
baseCommand:
- alfred
- pwalign
