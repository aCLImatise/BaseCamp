class: CommandLineTool
id: bam_multi_qc.py.cwl
inputs:
- id: in_report_pdf_bammultiqcpdf
  doc: Report PDF (bam_multi_qc.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_plot_reference_statistics
  doc: Do not plot reference statistics.
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_input_pickles
  doc: Input pickles.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bam_multi_qc.py
