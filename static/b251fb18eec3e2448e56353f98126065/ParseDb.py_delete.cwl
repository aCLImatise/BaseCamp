class: CommandLineTool
id: ParseDb.py_delete.cwl
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
- id: in_name_check_none
  doc: "The name of the fields to check for deletion criteria.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -f
- id: in_values_defining_records
  doc: "The values defining which records to delete. A value\nmay appear in any of\
    \ the fields specified with -f.\n(default: ['', 'NA'])"
  type: string[]
  inputBinding:
    prefix: -u
- id: in_logic
  doc: "Defines whether a value may appear in any field (any)\nor whether it must\
    \ appear in all fields (all).\n(default: any)"
  type: string?
  inputBinding:
    prefix: --logic
- id: in_regex
  doc: "If specified, treat values as regular expressions and\nallow partial string\
    \ matches. (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --regex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ParseDb.py
- delete
