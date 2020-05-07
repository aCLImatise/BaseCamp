class: CommandLineTool
id: msa2vcf.py.cwl
inputs:
- id: input
  doc: Input Fasta MSA file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output VCF file
  type: string
  inputBinding:
    position: 1
- id: reference_chr
  doc: Reference chromosome
  type: string
  inputBinding:
    prefix: --reference-chr
- id: reference_start
  doc: Reference start pos
  type: string
  inputBinding:
    prefix: --reference-start
- id: reference_sequence
  doc: Reference FASTA for checking REF
  type: string
  inputBinding:
    prefix: --reference-sequence
- id: bcf_tools
  doc: Path to bcftools
  type: string
  inputBinding:
    prefix: --bcftools
outputs: []
cwlVersion: v1.1
baseCommand:
- msa2vcf.py
