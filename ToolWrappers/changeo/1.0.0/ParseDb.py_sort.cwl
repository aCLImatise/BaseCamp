class: CommandLineTool
id: ParseDb.py_sort.cwl
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
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_annotation_field_recordsdefault
  doc: "The annotation field by which to sort records.\n(default: None)"
  type: string?
  inputBinding:
    prefix: -f
- id: in_num
  doc: "Specify to define the sort column as numeric rather\nthan textual. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --num
- id: in_descend
  doc: "If specified, sort records in descending, rather than\nascending, order by\
    \ values in the target field.\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --descend
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ParseDb.py
- sort
