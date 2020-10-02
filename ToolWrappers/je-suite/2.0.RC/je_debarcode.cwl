class: CommandLineTool
id: je_debarcode.cwl
inputs:
- id: in_displays_options_specific
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_col_two_dot
  doc: 'In this format, a simple BARCODE slot is expected in the ReadLayout and NO
    headers are '
  type: long
  inputBinding:
    position: 0
- id: in_e_dot_gdot
  doc: "sample1 ATAT|GAGG:CCAA|TGTG\n3. Extended barcode file format : 3 (single-end)\
    \ or 4 (paired-end) tab-delimited colums\nsame as the simple barcode file format\
    \ but the extra columns contains the file name(s)"
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz
  type: string
  inputBinding:
    position: 0
- id: in_required_dot
  doc: Cannot be used in conjuction with option(s) USE_EMBASE (EM)
  type: string
  inputBinding:
    position: 1
- id: in_formats_dot
  doc: "When provided, Je expects as many 'OF=' as output layouts ('OL=...') parameters\
    \ or "
  type: string
  inputBinding:
    position: 0
- id: in_barcoded_dot
  doc: 'Default value: null. '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- je
- debarcode
