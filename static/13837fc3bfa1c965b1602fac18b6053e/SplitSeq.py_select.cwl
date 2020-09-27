class: CommandLineTool
id: SplitSeq.py_select.cwl
inputs:
- id: in_list_fastafastq_files
  doc: "A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_explicit_output_file
  doc: "Explicit output file name(s). Note, this argument\ncannot be used with the\
    \ --failed, --outdir, or\n--outname arguments. If unspecified, then the output\n\
    filename will be based on the input filename(s).\n(default: None)"
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
- id: in_fast_a
  doc: "Specify to force output as FASTA rather than FASTQ.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string
  inputBinding:
    prefix: --delim
- id: in_annotation_field_defaultnone
  doc: "The annotation field for selection criteria. (default:\nNone)"
  type: string
  inputBinding:
    prefix: -f
- id: in_list_select_exclusive
  doc: "A list of values to select for in the specified field.\nMutually exclusive\
    \ with -t. (default: None)"
  type: string[]
  inputBinding:
    prefix: -u
- id: in_tab_delimited_file
  doc: "A tab delimited file specifying values to select for\nin the specified field.\
    \ The file must be formatted\nwith the given field name in the header row. Values\n\
    will be taken from that column. Mutually exclusive\nwith -u. (default: None)"
  type: File
  inputBinding:
    prefix: -t
- id: in_not
  doc: "If specified, will perform negative matching. Meaning,\nsequences will be\
    \ selected if they fail to match for\nall specified values. (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --not
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SplitSeq.py
- select
