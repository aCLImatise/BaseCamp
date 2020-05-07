class: CommandLineTool
id: hisat2_extract_snps_haplotypes_VCF.py.cwl
inputs:
- id: genome_file
  doc: input genome file (e.g. genome.fa)
  type: string
  inputBinding:
    position: 0
- id: vcf_f_names
  doc: 'A comma-seperated VCF files (plain text or gzipped file is accepted: GRCh38_dbSNP_no_SVs.vcf
    or GRCh38_dbSNP_no_SVs.vcf.gz'
  type: string
  inputBinding:
    position: 1
- id: base_fname
  doc: base filename for SNPs and haplotypes
  type: string
  inputBinding:
    position: 2
- id: reference_type
  doc: 'Reference type: gene, chromosome, and genome (default: genome)'
  type: string
  inputBinding:
    prefix: --reference-type
- id: inter_gap
  doc: 'Maximum distance for variants to be in the same haplotype (default: 30)'
  type: long
  inputBinding:
    prefix: --inter-gap
- id: intra_gap
  doc: 'Break a haplotype into several haplotypes (default: 50)'
  type: long
  inputBinding:
    prefix: --intra-gap
- id: non_rs
  doc: Allow SNP IDs not beginning with rs
  type: boolean
  inputBinding:
    prefix: --non-rs
- id: genotype_vcf
  doc: 'VCF file name for genotyping (default: empty)'
  type: string
  inputBinding:
    prefix: --genotype-vcf
- id: genotype_gene_list
  doc: 'A comma-separated list of genes to be genotyped (default: empty)'
  type: string
  inputBinding:
    prefix: --genotype-gene-list
- id: extra_files
  doc: Output extra files such as _backbone.fa and .ref
  type: boolean
  inputBinding:
    prefix: --extra-files
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_extract_snps_haplotypes_VCF.py
