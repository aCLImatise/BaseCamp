class: CommandLineTool
id: imfusion_expression.cwl
inputs:
- id: paired
  doc: Generate counts by counting fragments instead of reads (for paired-end data).
  type: boolean
  inputBinding:
    prefix: --paired
- id: stranded
  doc: Strandedness of the RNA-seq data.
  type: string
  inputBinding:
    prefix: --stranded
outputs: []
cwlVersion: v1.1
baseCommand:
- imfusion-expression
