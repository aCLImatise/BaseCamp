#!/usr/bin/env cwl-runner

baseCommand:
- vcf2eigenstrat
class: CommandLineTool
cwlVersion: v1.0
id: vcf2eigenstrat
inputs:
- doc: specify an Eigenstrat SNP file with the positions and alleles of a reference
    set. All positions in the SNP file will be output, adding missing data or hom-ref
    where necessary.
  id: snp_file
  inputBinding:
    prefix: --snpFile
  type: File
- doc: Input a reference sequence (uncompressed fasta format) to use to declare missing
    sites in the VCF as Hom-Ref instead of missing. This is useful if your VCF only
    contains non-ref sites. This option only makes sense if you use a SNP file.
  id: fill_hom_ref
  inputBinding:
    prefix: --fillHomRef
  type: string
- doc: 'specify the filenames for the EigenStrat SNP and IND file outputs: <FILE_PREFIX>.snp.txt
    and <FILE_PREFIX>.ind.txt'
  id: out_prefix
  inputBinding:
    prefix: --outPrefix
  type: File
- doc: specify the chromosome in the VCF file to call from. This is important if a
    SNP file has been given.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: specify the output chromosome name
  id: out_chrom
  inputBinding:
    prefix: --outChrom
  type: string
- doc: Remove transition SNPs from the output
  id: transversions_only
  inputBinding:
    prefix: --transversionsOnly
  type: boolean
