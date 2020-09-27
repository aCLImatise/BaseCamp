class: CommandLineTool
id: TQSexport.py.cwl
inputs:
- id: in_export
  doc: "=EXPORTFILE\nIllumina export file - Output format from the Genome\nAnalyzer"
  type: File
  inputBinding:
    prefix: --export
- id: in_phred
  doc: "threshold=THRESHOLD\nBase intensity threshold value (Phred quality scores\
    \ 0\nto 40, default=10)"
  type: long
  inputBinding:
    prefix: --Phred
- id: in_consec
  doc: "Minimum number of consecutive bases passing threshold\nvalues (default=20)"
  type: long
  inputBinding:
    prefix: --consec
- id: in_verbose
  doc: Runs in Verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_export
  doc: "=EXPORTFILE\nIllumina export file - Output format from the Genome\nAnalyzer"
  type: File
  outputBinding:
    glob: $(inputs.in_export)
cwlVersion: v1.1
baseCommand:
- TQSexport.py
