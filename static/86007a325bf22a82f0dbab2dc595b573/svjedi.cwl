class: CommandLineTool
id: svjedi.py.cwl
inputs:
- id: vcf
  doc: vcf format
  type: string
  inputBinding:
    prefix: --vcf
- id: ref
  doc: fasta format
  type: string
  inputBinding:
    prefix: --ref
- id: allele
  doc: fasta format
  type: string
  inputBinding:
    prefix: --allele
- id: i
  doc: '[<readfile> [<readfile> ...]], --input [<readfile> [<readfile> ...]] reads'
  type: boolean
  inputBinding:
    prefix: -i
- id: paf
  doc: PAF format
  type: string
  inputBinding:
    prefix: --paf
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: output
  doc: genotype output file
  type: string
  inputBinding:
    prefix: --output
- id: dover
  doc: breakpoint distance overlap
  type: string
  inputBinding:
    prefix: -dover
- id: d_end
  doc: soft clipping length allowed for semi global alingments
  type: string
  inputBinding:
    prefix: -dend
- id: min_support
  doc: 'Minimum number of alignments to genotype a SV (default: 3>=)'
  type: long
  inputBinding:
    prefix: --minsupport
- id: d
  doc: '[<seq data type>], --data [<seq data type>]'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- svjedi.py
