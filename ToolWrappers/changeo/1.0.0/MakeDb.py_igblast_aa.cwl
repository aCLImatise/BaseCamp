class: CommandLineTool
id: MakeDb.py_igblast_aa.cwl
inputs:
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
- id: in_igblast_output_files
  doc: "IgBLAST output files in format 7 with query sequence\n(igblastp argument '-outfmt\
    \ \"7 std qseq sseq btop\"').\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -i
- id: in_list_folders_andor
  doc: "List of folders and/or fasta files containing the same\ngermline set used\
    \ in the IgBLAST alignment. These\nreference sequences must contain IMGT-numbering\n\
    spacers (gaps) in the V segment. (default: None)"
  type: string[]
  inputBinding:
    prefix: -r
- id: in_list_input_fasta
  doc: "List of input FASTA files (with .fasta, .fna or .fa\nextension), containing\
    \ sequences. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_one_zero_x
  doc: "Table file containing 10X annotations (with .csv or\n.tsv extension). (default:\
    \ None)"
  type: File[]
  inputBinding:
    prefix: --10x
- id: in_as_is_id
  doc: "Specify to prevent input sequence headers from being\nparsed to add new columns\
    \ to database. Parsing of\nsequence headers requires headers to be in the pRESTO\n\
    annotation format, so this should be specified when\nsequence headers are incompatible\
    \ with the pRESTO\nannotation scheme. Note, unrecognized header formats\nwill\
    \ default to this behavior. (default: False)"
  type: boolean
  inputBinding:
    prefix: --asis-id
- id: in_as_is_calls
  doc: "Specify to prevent gene calls from being parsed into\nstandard allele names\
    \ in both the IgBLAST output and\nreference database. Note, this requires the\
    \ sequence\nidentifiers in the reference sequence set and the\nIgBLAST database\
    \ to be exact string matches. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --asis-calls
- id: in_extended
  doc: "Specify to include additional aligner specific fields\nin the output. Adds\
    \ v_score, v_identity, v_support,\nv_cigar, fwr1, fwr2, fwr3, cdr1 and cdr2. (default:\n\
    False)"
  type: boolean
  inputBinding:
    prefix: --extended
- id: in_regions
  doc: "IMGT CDR and FWR boundary definition to use. (default:\ndefault)\n"
  type: string
  inputBinding:
    prefix: --regions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MakeDb.py
- igblast-aa
