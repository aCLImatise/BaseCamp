class: CommandLineTool
id: dipenum.cwl
inputs:
- id: input_file
  doc: The input VCF/BCF file (use file:sample to specify a sample)
  type: string
  inputBinding:
    prefix: --input-file
- id: output
  doc: Write a file with all possible haplotypes.
  type: string
  inputBinding:
    prefix: --output
- id: l
  doc: '[ --location ] arg      The location / subset.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: '[ --reference ] arg     The reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: max_n_haplotypes
  doc: Maximum number of haplotypes to enumerate.
  type: string
  inputBinding:
    prefix: --max-n-haplotypes
- id: f
  doc: '[ --apply-filters ] arg Apply filters in VCF (default to 1)'
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: '[ --preprocess ] arg    Preprocess variants'
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- dipenum
