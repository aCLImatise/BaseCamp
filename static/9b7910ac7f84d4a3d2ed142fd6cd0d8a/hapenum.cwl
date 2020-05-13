class: CommandLineTool
id: hapenum.cwl
inputs:
- id: input_file
  doc: The input VCF/BCF file (use file:sample to specify a sample)
  type: string
  inputBinding:
    prefix: --input-file
- id: output_dot
  doc: Write a dot file with the reference graph.
  type: string
  inputBinding:
    prefix: --output-dot
- id: output_fast_a
  doc: Write a fasta file with all possible haplotypes.
  type: string
  inputBinding:
    prefix: --output-fasta
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
- id: f
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: '[ --preprocess ] arg    Preprocess variants'
  type: boolean
  inputBinding:
    prefix: -P
- id: max_n_haplotypes
  doc: Maximum number of haplotypes to enumerate.
  type: string
  inputBinding:
    prefix: --max-n-haplotypes
outputs: []
cwlVersion: v1.1
baseCommand:
- hapenum
