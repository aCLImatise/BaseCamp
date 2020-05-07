class: CommandLineTool
id: gvcf2bed.cwl
inputs:
- id: input
  doc: Input gVCF
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output bed file
  type: string
  inputBinding:
    prefix: --output
- id: sample
  doc: Sample name in VCF file to use. Will default to first sample (alphabetically)
    if not supplied
  type: string
  inputBinding:
    prefix: --sample
- id: quality
  doc: Minimum genotype quality (default 20)
  type: string
  inputBinding:
    prefix: --quality
- id: non_variant_quality
  doc: Minimum genotype quality for non-variant records (default 20)
  type: string
  inputBinding:
    prefix: --non-variant-quality
- id: bed_graph
  doc: Output in bedgraph mode
  type: boolean
  inputBinding:
    prefix: --bedgraph
outputs: []
cwlVersion: v1.1
baseCommand:
- gvcf2bed
