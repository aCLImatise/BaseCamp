class: CommandLineTool
id: MakeDb.py_imgt.cwl
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
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_format
  doc: 'Specify input and output format. (default: airr)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_zipped_imgt_output
  doc: "Either zipped IMGT output files (.zip or .txz) or a\nfolder containing unzipped\
    \ IMGT output files (which\nmust include 1_Summary, 2_IMGT-gapped, 3_Nt-sequences,\n\
    and 6_Junction). (default: None)"
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_list_fasta_files
  doc: "[SEQ_FILES [SEQ_FILES ...]]\nList of FASTA files (with .fasta, .fna or .fa\n\
    extension) that were submitted to IMGT/HighV-QUEST. If\nunspecified, sequence\
    \ identifiers truncated by\nIMGT/HighV-QUEST will not be corrected. (default:\n\
    None)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_list_folders_andor
  doc: "List of folders and/or fasta files containing the\ngermline sequence set used\
    \ by IMGT/HighV-QUEST. These\nreference sequences must contain IMGT-numbering\n\
    spacers (gaps) in the V segment. If unspecified, the\ngermline sequence reconstruction\
    \ will not be included\nin the output. (default: None)"
  type: string[]
  inputBinding:
    prefix: -r
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
  type: boolean?
  inputBinding:
    prefix: --asis-id
- id: in_partial
  doc: "If specified, include incomplete V(D)J alignments in\nthe pass file instead\
    \ of the fail file. An incomplete\nalignment is defined as a record that is missing\
    \ a V\ngene assignment, J gene assignment, junction region,\nor productivity call.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --partial
- id: in_extended
  doc: "Specify to include additional aligner specific fields\nin the output. Adds\
    \ <vdj>_score, <vdj>_identity>,\nfwr1, fwr2, fwr3, fwr4, cdr1, cdr2, cdr3, n1_length,\n\
    n2_length, p3v_length, p5d_length, p3d_length,\np5j_length and d_frame. (default:\
    \ False)\n"
  type: boolean?
  inputBinding:
    prefix: --extended
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_zipped_imgt_output
  doc: "Either zipped IMGT output files (.zip or .txz) or a\nfolder containing unzipped\
    \ IMGT output files (which\nmust include 1_Summary, 2_IMGT-gapped, 3_Nt-sequences,\n\
    and 6_Junction). (default: None)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_zipped_imgt_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/changeo:1.0.2--py_0
cwlVersion: v1.1
baseCommand:
- MakeDb.py
- imgt
