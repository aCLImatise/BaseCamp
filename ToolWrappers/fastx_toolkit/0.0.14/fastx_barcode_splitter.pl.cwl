class: CommandLineTool
id: fastx_barcode_splitter.pl.cwl
inputs:
- id: in_bc_file
  doc: '- Barcodes file name. (see explanation below.)'
  type: File?
  inputBinding:
    prefix: --bcfile
- id: in_prefix
  doc: "- File prefix. will be added to the output files. Can be used\nto specify\
    \ output directories."
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: "- File suffix (optional). Can be used to specify file\nextensions."
  type: File?
  inputBinding:
    prefix: --suffix
- id: in_bol
  doc: "- Try to match barcodes at the BEGINNING of sequences.\n(What biologists would\
    \ call the 5' end, and programmers\nwould call index 0.)"
  type: boolean?
  inputBinding:
    prefix: --bol
- id: in_eol
  doc: "- Try to match barcodes at the END of sequences.\n(What biologists would call\
    \ the 3' end, and programmers\nwould call the end of the string.)\nNOTE: one of\
    \ --bol, --eol must be specified, but not both."
  type: boolean?
  inputBinding:
    prefix: --eol
- id: in_mismatches
  doc: '- Max. number of mismatches allowed. default is 1.'
  type: long?
  inputBinding:
    prefix: --mismatches
- id: in_exact
  doc: "- Same as '--mismatches 0'. If both --exact and --mismatches\nare specified,\
    \ '--exact' takes precedence."
  type: boolean?
  inputBinding:
    prefix: --exact
- id: in_partial
  doc: "- Allow partial overlap of barcodes. (see explanation below.)\n(Default is\
    \ not partial matching)"
  type: string?
  inputBinding:
    prefix: --partial
- id: in_quiet
  doc: "- Don't print counts and summary at the end of the run.\n(Default is to print.)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: '- Print lots of useless debug information to STDERR.'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_attt_act_at_gta_aagatagaaggaataaggtgaag
  doc: GATCT (4 mismatches)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "- File prefix. will be added to the output files. Can be used\nto specify\
    \ output directories."
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- fastx_barcode_splitter.pl
