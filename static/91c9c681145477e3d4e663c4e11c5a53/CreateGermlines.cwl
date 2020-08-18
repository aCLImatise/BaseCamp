class: CommandLineTool
id: ../../../CreateGermlines.py.cwl
inputs:
- id: list_tab_delimited
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: explicit_output_file
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
  doc: 'Specify input and output format. (default: airr)'
  type: string
  inputBinding:
    prefix: --format
- id: cloned
  doc: 'Specify to create only one germline per clone. Note, if allele calls are ambiguous
    within a clonal group, this will place the germline call used for the entire clone
    within the germline_v_call, germline_d_call and germline_j_call fields. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --cloned
- id: sf
  doc: 'Field containing the aligned sequence. Defaults to sequence_alignment (airr)
    or SEQUENCE_IMGT (changeo). (default: None)'
  type: string
  inputBinding:
    prefix: --sf
- id: vf
  doc: 'Field containing the germline V segment call. Defaults to v_call (airr) or
    V_CALL (changeo). (default: None)'
  type: string
  inputBinding:
    prefix: --vf
- id: df
  doc: 'Field containing the germline D segment call. Defaults to d_call (airr) or
    D_CALL (changeo). (default: None)'
  type: string
  inputBinding:
    prefix: --df
- id: jf
  doc: 'Field containing the germline J segment call. Defaults to j_call (airr) or
    J_CALL (changeo). (default: None)'
  type: string
  inputBinding:
    prefix: --jf
- id: cf
  doc: 'Field containing clone identifiers. Ignored if --cloned is not also specified.
    Defaults to clone_id (airr) or CLONE (changeo). (default: None)'
  type: string
  inputBinding:
    prefix: --cf
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
outputs: []
cwlVersion: v1.1
baseCommand:
- CreateGermlines.py
