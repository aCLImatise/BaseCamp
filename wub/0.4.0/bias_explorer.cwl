class: CommandLineTool
id: ../../../bias_explorer.py.cwl
inputs:
- id: report_pdf_biasexplorerpdf
  doc: Report PDF (bias_explorer.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: exclude_transcripts_zero
  doc: Exclude transcripts with zero counts.
  type: boolean
  inputBinding:
    prefix: -x
- id: count_file
  doc: Input counts file with length ang GC content features.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bias_explorer.py
