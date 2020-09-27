class: CommandLineTool
id: ParseDb.py_rename.cwl
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
- id: in_list_rename_default
  doc: 'List of fields to rename. (default: None)'
  type: string[]
  inputBinding:
    prefix: -f
- id: in_list_new_names
  doc: 'List of new names for each field. (default: None)'
  type: string[]
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ParseDb.py
- rename
