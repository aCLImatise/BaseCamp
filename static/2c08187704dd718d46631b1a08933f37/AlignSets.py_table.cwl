class: CommandLineTool
id: AlignSets.py_table.cwl
inputs:
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
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string?
  inputBinding:
    prefix: --delim
- id: in_fasta_file_containing
  doc: "A FASTA file containing primer sequences. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: -p
- id: in_explicit_output_file
  doc: "Explicit output file name. Note, this argument cannot\nbe used with the --failed,\
    \ --outdir, or --outname\narguments. If unspecified, then the output filename\n\
    will be based on the input filename(s). (default:\nNone)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_reverse
  doc: "If specified create a 3' offset table instead\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_exec
  doc: "The name or location of the muscle executable.\n(default: muscle)\n"
  type: string?
  inputBinding:
    prefix: --exec
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- AlignSets.py
- table
