class: CommandLineTool
id: ConvertDb.py_fasta.cwl
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
- id: in_if
  doc: "The name of the field containing identifiers (default:\nsequence_id)"
  type: string
  inputBinding:
    prefix: --if
- id: in_sf
  doc: "The name of the field containing sequences (default:\nsequence_alignment)"
  type: string
  inputBinding:
    prefix: --sf
- id: in_mf
  doc: "List of annotation fields to add to the sequence\ndescription (default: None)\n"
  type: string[]
  inputBinding:
    prefix: --mf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ConvertDb.py
- fasta
