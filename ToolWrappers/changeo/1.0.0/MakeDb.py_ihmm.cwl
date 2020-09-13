class: CommandLineTool
id: ../../../MakeDb.py_ihmm.cwl
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
- id: in_ihmmunealign_output_file
  doc: 'iHMMune-Align output file. (default: None)'
  type: File
  inputBinding:
    prefix: -i
- id: in_list_andor_fasta
  doc: "List of folders and/or FASTA files containing the set\nof germline sequences\
    \ used by iHMMune-Align. These\nreference sequences must contain IMGT-numbering\n\
    spacers (gaps) in the V segment. (default: None)"
  type: string[]
  inputBinding:
    prefix: -r
- id: in_list_input_fasta
  doc: "List of input FASTA files (with .fasta, .fna or .fa\nextension) containing\
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
- id: in_partial
  doc: "If specified, include incomplete V(D)J alignments in\nthe pass file instead\
    \ of the fail file. An incomplete\nalignment is defined as a record for which\
    \ a valid\nIMGT-gapped sequence cannot be built or that is\nmissing a V gene assignment,\
    \ J gene assignment,\njunction region, or productivity call. (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --partial
- id: in_extended
  doc: "Specify to include additional aligner specific fields\nin the output. Adds\
    \ the path score of the iHMMune-\nAlign hidden Markov model as vdj_score; adds\
    \ fwr1,\nfwr2, fwr3, fwr4, cdr1, cdr2 and cdr3. (default:\nFalse)\n"
  type: File
  inputBinding:
    prefix: --extended
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ihmmunealign_output_file
  doc: 'iHMMune-Align output file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_ihmmunealign_output_file)
- id: out_extended
  doc: "Specify to include additional aligner specific fields\nin the output. Adds\
    \ the path score of the iHMMune-\nAlign hidden Markov model as vdj_score; adds\
    \ fwr1,\nfwr2, fwr3, fwr4, cdr1, cdr2 and cdr3. (default:\nFalse)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_extended)
cwlVersion: v1.1
baseCommand:
- MakeDb.py
- ihmm
