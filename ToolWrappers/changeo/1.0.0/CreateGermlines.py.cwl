class: CommandLineTool
id: CreateGermlines.py.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir, or --outname\narguments. If unspecified, then the output filename\n\
    will be based on the input filename(s). (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --failed
- id: in_format
  doc: 'Specify input and output format. (default: airr)'
  type: string
  inputBinding:
    prefix: --format
- id: in_list_folders_andor
  doc: "List of folders and/or fasta files (with .fasta, .fna\nor .fa extension) with\
    \ germline sequences. When using\nthe default Change-O sequence and coordinate\
    \ fields,\nthese reference sequences must contain IMGT-numbering\nspacers (gaps)\
    \ in the V segment. Alternative numbering\nschemes, or no numbering, may work\
    \ for alternative\nsequence and coordinate definitions that define a\nvalid alignment,\
    \ but a warning will be issued.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -r
- id: in_specify_types_include
  doc: "[{full,dmask,vonly,regions} ...]\nSpecify type(s) of germlines to include\
    \ full germline,\ngermline with D segment masked, or germline for V\nsegment only.\
    \ (default: ['dmask'])"
  type: string
  inputBinding:
    prefix: -g
- id: in_cloned
  doc: "Specify to create only one germline per clone. Note,\nif allele calls are\
    \ ambiguous within a clonal group,\nthis will place the germline call used for\
    \ the entire\nclone within the germline_v_call, germline_d_call and\ngermline_j_call\
    \ fields. (default: False)"
  type: boolean
  inputBinding:
    prefix: --cloned
- id: in_sf
  doc: "Field containing the aligned sequence. Defaults to\nsequence_alignment (airr)\
    \ or SEQUENCE_IMGT (changeo).\n(default: None)"
  type: string
  inputBinding:
    prefix: --sf
- id: in_vf
  doc: "Field containing the germline V segment call. Defaults\nto v_call (airr) or\
    \ V_CALL (changeo). (default: None)"
  type: string
  inputBinding:
    prefix: --vf
- id: in_df
  doc: "Field containing the germline D segment call. Defaults\nto d_call (airr) or\
    \ D_CALL (changeo). (default: None)"
  type: string
  inputBinding:
    prefix: --df
- id: in_jf
  doc: "Field containing the germline J segment call. Defaults\nto j_call (airr) or\
    \ J_CALL (changeo). (default: None)"
  type: string
  inputBinding:
    prefix: --jf
- id: in_cf
  doc: Field containing clone identifiers. Ignored if
  type: string
  inputBinding:
    prefix: --cf
- id: in_germ_pass
  doc: database with assigned germline sequences.
  type: string
  inputBinding:
    position: 0
- id: in_germ_fail
  doc: database with records failing germline assignment.
  type: string
  inputBinding:
    position: 1
- id: in_clone_id
  doc: 'output fields:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CreateGermlines.py
