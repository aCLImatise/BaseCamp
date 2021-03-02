class: CommandLineTool
id: riboraptor_bam_to_bedgraph.cwl
inputs:
- id: in_bam
  doc: Path to BAM file  [required]
  type: File?
  inputBinding:
    prefix: --bam
- id: in_strand
  doc: '[+|-|both]         Count from strand of this type only'
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_end_type
  doc: "[5prime|3prime|either]\nPileup 5' / 3'/ either ends"
  type: boolean?
  inputBinding:
    prefix: --end_type
- id: in_save_to
  doc: Path to write bedgraph output
  type: File?
  inputBinding:
    prefix: --saveto
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_to
  doc: Path to write bedgraph output
  type: File?
  outputBinding:
    glob: $(inputs.in_save_to)
hints: []
cwlVersion: v1.1
baseCommand:
- riboraptor
- bam-to-bedgraph
