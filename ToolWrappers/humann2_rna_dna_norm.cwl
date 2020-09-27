class: CommandLineTool
id: humann2_rna_dna_norm.cwl
inputs:
- id: in_input_dna
  doc: Original DNA output table (tsv or biom format)
  type: string
  inputBinding:
    prefix: --input_dna
- id: in_input_rna
  doc: Original RNA output table (tsv or biom format)
  type: string
  inputBinding:
    prefix: --input_rna
- id: in_output_basename
  doc: Path/basename for the three output tables; DEFAULT=results
  type: File
  inputBinding:
    prefix: --output_basename
- id: in_method
  doc: Choice of smoothing method; DEFAULT=laplace
  type: string
  inputBinding:
    prefix: --method
- id: in_log_transform
  doc: Report log-transformed relative expression values
  type: boolean
  inputBinding:
    prefix: --log_transform
- id: in_log_base
  doc: "Base for log transformation (if requested); DEFAULT=2.\n"
  type: long
  inputBinding:
    prefix: --log_base
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_basename
  doc: Path/basename for the three output tables; DEFAULT=results
  type: File
  outputBinding:
    glob: $(inputs.in_output_basename)
cwlVersion: v1.1
baseCommand:
- humann2_rna_dna_norm
