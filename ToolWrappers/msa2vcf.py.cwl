class: CommandLineTool
id: msa2vcf.py.cwl
inputs:
- id: in_reference_sequence
  doc: '[--bcftools BCFTOOLS]'
  type: string
  inputBinding:
    prefix: --reference-sequence
- id: in_reference_chr
  doc: Reference chromosome
  type: string
  inputBinding:
    prefix: --reference-chr
- id: in_reference_start
  doc: Reference start pos
  type: string
  inputBinding:
    prefix: --reference-start
- id: in_bcf_tools
  doc: Path to bcftools
  type: File
  inputBinding:
    prefix: --bcftools
- id: in_input
  doc: Input Fasta MSA file
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output VCF file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msa2vcf.py
