class: CommandLineTool
id: draw_fusions.R.cwl
inputs:
- id: in_pdf_height
  doc: ''
  type: long?
  inputBinding:
    prefix: --pdfHeight
- id: in_pdf_width
  doc: ''
  type: long?
  inputBinding:
    prefix: --pdfWidth
- id: in_render_three_d_effect
  doc: ''
  type: long?
  inputBinding:
    prefix: --render3dEffect
- id: in_print_exon_labels
  doc: ''
  type: string?
  inputBinding:
    prefix: --printExonLabels
- id: in_squish_introns
  doc: ''
  type: string?
  inputBinding:
    prefix: --squishIntrons
- id: in_protein_domains
  doc: ''
  type: long?
  inputBinding:
    prefix: --proteinDomains
- id: in_min_confidence_for_circo_splot
  doc: ''
  type: string?
  inputBinding:
    prefix: --minConfidenceForCircosPlot
- id: in_cytoband_s
  doc: ''
  type: string?
  inputBinding:
    prefix: --cytobands
- id: in_alignments
  doc: ''
  type: string?
  inputBinding:
    prefix: --alignments
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    prefix: --output
- id: in_fusions
  doc: ''
  type: string?
  inputBinding:
    prefix: --fusions
- id: in_annotation
  doc: ''
  type: string?
  inputBinding:
    prefix: --annotation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/arriba:2.1.0--hd2e4403_0
cwlVersion: v1.1
baseCommand:
- draw_fusions.R
