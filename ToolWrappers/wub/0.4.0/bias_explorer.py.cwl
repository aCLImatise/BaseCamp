class: CommandLineTool
id: bias_explorer.py.cwl
inputs:
- id: in_report_pdf_biasexplorerpdf
  doc: Report PDF (bias_explorer.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: in_exclude_transcripts_zero
  doc: Exclude transcripts with zero counts.
  type: boolean
  inputBinding:
    prefix: -x
- id: in_count_file
  doc: Input counts file with length ang GC content features.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bias_explorer.py
