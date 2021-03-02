class: CommandLineTool
id: je_demultiplex_illu.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_data_dot
  doc: 'Required. '
  type: string
  inputBinding:
    position: 0
- id: in_required_dot
  doc: INDEX_FILE2=File
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz
  type: string
  inputBinding:
    position: 0
- id: in_provided_dot
  doc: 'Indicates if both index barcodes encode redundant information i.e. if both
    barcodes are '
  type: string
  inputBinding:
    position: 0
- id: in_distinct
  doc: 'values can be given here using the syntax MM=X:Z where X and Z are 2 integers
    to use for '
  type: string
  inputBinding:
    position: 0
- id: in_becomes
  doc: "'@D3FCO8P1:178:C1WLBACXX:7:1101:1836:1965:2:N:0:BARCODE'"
  type: string
  inputBinding:
    position: 0
- id: in_detected_dot
  doc: "Default value: Standard. This option can be set to 'null' to clear the default\
    \ value. "
  type: string
  inputBinding:
    position: 0
- id: in_barcoded_dot
  doc: 'N.B: this file will have a size of about one of the fastq input files.  Default
    value: '
  type: string
  inputBinding:
    position: 0
- id: in_null_dot
  doc: "FORCE=Boolean                 Allows to overwrite existing files (system rights\
    \ still apply).\nDefault value: false. This option can be set to 'null' to clear\
    \ the default value."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- je
- demultiplex-illu
