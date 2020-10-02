class: CommandLineTool
id: ParseDb.py_merge.cwl
inputs:
- id: in_list_tab_defaultnone
  doc: "A list of tab delimited database files. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: -d
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
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir or --outname\narguments. (default: None)"
  type: File
  inputBinding:
    prefix: -o
- id: in_drop
  doc: "If specified, drop fields that do not exist in all\ninput files. Otherwise,\
    \ include all columns in all\nfiles and fill missing data with empty strings.\n\
    (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --drop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir or --outname\narguments. (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_explicit_output_file)
cwlVersion: v1.1
baseCommand:
- ParseDb.py
- merge
