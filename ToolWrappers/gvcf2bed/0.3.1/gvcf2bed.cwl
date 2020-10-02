class: CommandLineTool
id: gvcf2bed.cwl
inputs:
- id: in_input
  doc: Input gVCF
  type: string
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output bed file
  type: File
  inputBinding:
    prefix: --output
- id: in_sample
  doc: "Sample name in VCF file to use. Will default to first\nsample (alphabetically)\
    \ if not supplied"
  type: File
  inputBinding:
    prefix: --sample
- id: in_quality
  doc: Minimum genotype quality (default 20)
  type: long
  inputBinding:
    prefix: --quality
- id: in_non_variant_quality
  doc: "Minimum genotype quality for non-variant records\n(default 20)"
  type: long
  inputBinding:
    prefix: --non-variant-quality
- id: in_bed_graph
  doc: Output in bedgraph mode
  type: boolean
  inputBinding:
    prefix: --bedgraph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output bed file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gvcf2bed
