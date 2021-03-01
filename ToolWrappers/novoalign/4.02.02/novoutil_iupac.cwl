class: CommandLineTool
id: novoutil_iupac.cwl
inputs:
- id: in_lower_quality_limit
  doc: "<99>    Lower quality limit for SNPs. Default 30.\nSNPs with quality of '.'\
    \ are assumed as high quality."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_replace_reference_base
  doc: "Replace reference base with the genotype base code.\nThe reference base will\
    \ not be included in the IUPAC code if\nthe SNP is homozygous. Zygosity is determined\
    \ as follows:\nif -s is specified then from GT attribute of the sample\nelse if\
    \ there is an AF tag then AF=1 is homozygous\nelse check first GT tag."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_update_reference_changes
  doc: "Update reference with homozygous indels from the vcf file.\nNote. That this\
    \ changes the length of reference and will affect\nlocation of annotations hence\
    \ ability to give a list of bed\nfiles to be relocated."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_use_snp_vcf
  doc: Use with SNP files in wgsim format rather than vcf.
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_sets_sample_specified
  doc: "Sets sample (1 based) to use for multi-sample vcf files.\nWhen a sample is\
    \ specified the GT of that sample is used for\ndetermining genotype. If sample\
    \ has ./. in GT attribute then\nthe SNP is not encoded into the reference.\nIf\
    \ a multi-sample vcf file is used and -s is not specified\nthen all SNPs are applied\
    \ and AF attribute is used to determine\ngenotype, AF=1.0 is homozygous for the\
    \ SNP."
  type: long?
  inputBinding:
    prefix: -s
- id: in_snp_file
  doc: is a sorted vcf file of SNPs, and
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_files
  doc: "is one or more fasta files to be processed.\nInput files may be compressed\
    \ with gzip or bzip."
  type: string
  inputBinding:
    position: 1
- id: in_bed_files
  doc: "BED format files whose coordinates should be updated to match the new \nfasta\
    \ file. Useful if indels are being incorporated in the new fasta files.\nRelocated\
    \ BED filenames are prefixed by 'new.'"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- iupac
