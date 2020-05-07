class: CommandLineTool
id: CreateGermlines.py.cwl
inputs:
- id: germ_pass
  doc: database with assigned germline sequences.
  type: string
  inputBinding:
    position: 0
- id: germ_fail
  doc: database with records failing germline assignment.
  type: string
  inputBinding:
    position: 1
- id: d
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: o
  doc: 'Explicit output file name. Note, this argument cannot be used with the --failed,
    --outdir, or --outname arguments. If unspecified, then the output filename will
    be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: format
  doc: 'Specify input and output format. (default: changeo)'
  type: string
  inputBinding:
    prefix: --format
- id: cloned
  doc: 'Specify to create only one germline per clone. Note, if allele calls are ambiguous
    within a clonal group, this will place the germline call used for the entire clone
    within the GERMLINE_V_CALL, GERMLINE_D_CALL and GERMLINE_J_CALL fields. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --cloned
- id: sf
  doc: 'Field containing the aligned sequence. Defaults to SEQUENCE_IMGT (changeo)
    or sequence_alignment (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --sf
- id: vf
  doc: 'Field containing the germline V segment call. Defaults to V_CALL (changeo)
    or v_call (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --vf
- id: df
  doc: 'Field containing the germline D segment call. Defaults to D_CALL (changeo)
    or d_call (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --df
- id: jf
  doc: 'Field containing the germline J segment call. Defaults to J_CALL (changeo)
    or j_call (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --jf
outputs: []
cwlVersion: v1.1
baseCommand:
- CreateGermlines.py
