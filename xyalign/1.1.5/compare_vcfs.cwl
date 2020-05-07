class: CommandLineTool
id: compare_vcfs.cwl
inputs:
- id: vcf_before
  doc: Full path to first Platypus VCF output from BAM_ANALYSIS module. This will
    be treated as the 'before' condition for comparisons.
  type: string
  inputBinding:
    prefix: --vcf_before
- id: vcf_after
  doc: Full path to second Platypus VCF output from BAM_ANALYSIS module. This will
    be treated as the 'after' condition for comparisons.
  type: string
  inputBinding:
    prefix: --vcf_after
- id: output_file
  doc: Name of output file (including path, if to be created elsewhere).
  type: string
  inputBinding:
    prefix: --output_file
- id: variant_site_quality
  doc: Consider all SNPs with a site quality (QUAL) greater than or equal to this
    value. Default is 30.
  type: string
  inputBinding:
    prefix: --variant_site_quality
- id: variant_genotype_quality
  doc: Consider all SNPs with a sample genotype quality greater than or equal to this
    value. Default is 30.
  type: string
  inputBinding:
    prefix: --variant_genotype_quality
- id: variant_depth
  doc: Consider all SNPs with a sample depth greater than or equal to this value.
    Default is 4.
  type: string
  inputBinding:
    prefix: --variant_depth
- id: chrom
  doc: Name of chromosome to analyze.
  type: string
  inputBinding:
    prefix: --chrom
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_vcfs
