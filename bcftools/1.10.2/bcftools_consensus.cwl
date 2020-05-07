class: CommandLineTool
id: bcftools_consensus.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf_gz
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: chain
  doc: write a chain file for liftover
  type: File
  inputBinding:
    prefix: --chain
- id: exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --exclude
- id: fast_a_ref
  doc: reference sequence in fasta format
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: haplotype
  doc: 'choose which allele to use from the FORMAT/GT field, note the codes are case-insensitive:
    1: first allele from GT, regardless of phasing 2: second allele from GT, regardless
    of phasing R: REF allele in het genotypes A: ALT allele LR,LA: longer allele and
    REF/ALT if equal length SR,SA: shorter allele and REF/ALT if equal length 1pIu,2pIu:
    first/second allele for phased and IUPAC code for unphased GTs'
  type: string
  inputBinding:
    prefix: --haplotype
- id: include
  doc: select sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --include
- id: iupac_codes
  doc: output variants in the form of IUPAC ambiguity codes
  type: boolean
  inputBinding:
    prefix: --iupac-codes
- id: mask
  doc: replace regions with N
  type: File
  inputBinding:
    prefix: --mask
- id: missing
  doc: output <char> instead of skipping the missing genotypes
  type: string
  inputBinding:
    prefix: --missing
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: prefix
  doc: prefix to add to output sequence names
  type: string
  inputBinding:
    prefix: --prefix
- id: sample
  doc: apply variants of the given sample
  type: string
  inputBinding:
    prefix: --sample
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- consensus
