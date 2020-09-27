class: CommandLineTool
id: bcftools_consensus.cwl
inputs:
- id: in_sample
  doc: apply variants of the given sample
  type: string
  inputBinding:
    prefix: --sample
- id: in_chain
  doc: write a chain file for liftover
  type: File
  inputBinding:
    prefix: --chain
- id: in_exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --exclude
- id: in_fast_a_ref
  doc: reference sequence in fasta format
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: in_haplotype
  doc: "choose which allele to use from the FORMAT/GT field, note\nthe codes are case-insensitive:\n\
    1: first allele from GT, regardless of phasing\n2: second allele from GT, regardless\
    \ of phasing\nR: REF allele in het genotypes\nA: ALT allele\nLR,LA: longer allele\
    \ and REF/ALT if equal length\nSR,SA: shorter allele and REF/ALT if equal length\n\
    1pIu,2pIu: first/second allele for phased and IUPAC code for unphased GTs"
  type: long
  inputBinding:
    prefix: --haplotype
- id: in_include
  doc: select sites for which the expression is true (see man page for details)
  type: string
  inputBinding:
    prefix: --include
- id: in_iupac_codes
  doc: output variants in the form of IUPAC ambiguity codes
  type: boolean
  inputBinding:
    prefix: --iupac-codes
- id: in_mask
  doc: replace regions with N
  type: File
  inputBinding:
    prefix: --mask
- id: in_missing
  doc: output <char> instead of skipping the missing genotypes
  type: string
  inputBinding:
    prefix: --missing
- id: in_output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: in_prefix
  doc: prefix to add to output sequence names
  type: string
  inputBinding:
    prefix: --prefix
- id: in_file_dot_vcf_do_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to a file [standard output]
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- bcftools
- consensus
