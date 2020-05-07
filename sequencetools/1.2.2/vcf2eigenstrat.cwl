class: CommandLineTool
id: vcf2eigenstrat.cwl
inputs:
- id: snp_file
  doc: specify an Eigenstrat SNP file with the positions and alleles of a reference
    set. All positions in the SNP file will be output, adding missing data or hom-ref
    where necessary.
  type: File
  inputBinding:
    prefix: --snpFile
- id: fill_hom_ref
  doc: Input a reference sequence (uncompressed fasta format) to use to declare missing
    sites in the VCF as Hom-Ref instead of missing. This is useful if your VCF only
    contains non-ref sites. This option only makes sense if you use a SNP file.
  type: string
  inputBinding:
    prefix: --fillHomRef
- id: out_prefix
  doc: 'specify the filenames for the EigenStrat SNP and IND file outputs: <FILE_PREFIX>.snp.txt
    and <FILE_PREFIX>.ind.txt'
  type: File
  inputBinding:
    prefix: --outPrefix
- id: chrom
  doc: specify the chromosome in the VCF file to call from. This is important if a
    SNP file has been given.
  type: string
  inputBinding:
    prefix: --chrom
- id: out_chrom
  doc: specify the output chromosome name
  type: string
  inputBinding:
    prefix: --outChrom
- id: transversions_only
  doc: Remove transition SNPs from the output
  type: boolean
  inputBinding:
    prefix: --transversionsOnly
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2eigenstrat
