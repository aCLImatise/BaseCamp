class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_multi_qc.py.cwl
inputs:
- id: report_pdf_bammultiqcpdf
  doc: Report PDF (bam_multi_qc.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: plot_reference_statistics
  doc: Do not plot reference statistics.
  type: boolean
  inputBinding:
    prefix: -x
- id: input_pickles
  doc: Input pickles.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_multi_qc.py
