class: CommandLineTool
id: humann2_rna_dna_norm.cwl
inputs:
- id: input_dna
  doc: Original DNA output table (tsv or biom format)
  type: string
  inputBinding:
    prefix: --input_dna
- id: input_rna
  doc: Original RNA output table (tsv or biom format)
  type: string
  inputBinding:
    prefix: --input_rna
- id: output_basename
  doc: Path/basename for the three output tables; DEFAULT=results
  type: string
  inputBinding:
    prefix: --output_basename
- id: method
  doc: Choice of smoothing method; DEFAULT=laplace
  type: string
  inputBinding:
    prefix: --method
- id: log_transform
  doc: Report log-transformed relative expression values
  type: boolean
  inputBinding:
    prefix: --log_transform
- id: log_base
  doc: Base for log transformation (if requested); DEFAULT=2.
  type: string
  inputBinding:
    prefix: --log_base
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_rna_dna_norm
