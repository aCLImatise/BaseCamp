class: CommandLineTool
id: ../../../hisat2_extract_snps_haplotypes_VCF.py.cwl
inputs:
- id: in_reference_type
  doc: "Reference type: gene, chromosome, and genome (default:\ngenome)"
  type: string
  inputBinding:
    prefix: --reference-type
- id: in_inter_gap
  doc: "Maximum distance for variants to be in the same\nhaplotype (default: 30)"
  type: long
  inputBinding:
    prefix: --inter-gap
- id: in_intra_gap
  doc: "Break a haplotype into several haplotypes (default:\n50)"
  type: long
  inputBinding:
    prefix: --intra-gap
- id: in_non_rs
  doc: Allow SNP IDs not beginning with rs
  type: boolean
  inputBinding:
    prefix: --non-rs
- id: in_genotype_vcf
  doc: 'VCF file name for genotyping (default: empty)'
  type: File
  inputBinding:
    prefix: --genotype-vcf
- id: in_genotype_gene_list
  doc: "A comma-separated list of genes to be genotyped\n(default: empty)"
  type: string
  inputBinding:
    prefix: --genotype-gene-list
- id: in_extra_files
  doc: Output extra files such as _backbone.fa and .ref
  type: boolean
  inputBinding:
    prefix: --extra-files
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_VCF.py
