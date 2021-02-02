class: CommandLineTool
id: compare_vcfs.cwl
inputs:
- id: in_output_file
  doc: "[--variant_site_quality VARIANT_SITE_QUALITY]\n[--variant_genotype_quality\
    \ VARIANT_GENOTYPE_QUALITY]\n[--variant_depth VARIANT_DEPTH] --chrom CHROM"
  type: File
  inputBinding:
    prefix: --output_file
- id: in_vcf_before
  doc: "Full path to first Platypus VCF output from\nBAM_ANALYSIS module. This will\
    \ be treated as the\n'before' condition for comparisons."
  type: File
  inputBinding:
    prefix: --vcf_before
- id: in_vcf_after
  doc: "Full path to second Platypus VCF output from\nBAM_ANALYSIS module. This will\
    \ be treated as the\n'after' condition for comparisons."
  type: File
  inputBinding:
    prefix: --vcf_after
- id: in_variant_site_quality
  doc: "Consider all SNPs with a site quality (QUAL) greater\nthan or equal to this\
    \ value. Default is 30."
  type: long
  inputBinding:
    prefix: --variant_site_quality
- id: in_variant_genotype_quality
  doc: "Consider all SNPs with a sample genotype quality\ngreater than or equal to\
    \ this value. Default is 30."
  type: long
  inputBinding:
    prefix: --variant_genotype_quality
- id: in_variant_depth
  doc: "Consider all SNPs with a sample depth greater than or\nequal to this value.\
    \ Default is 4."
  type: long
  inputBinding:
    prefix: --variant_depth
- id: in_chrom
  doc: Name of chromosome to analyze.
  type: string
  inputBinding:
    prefix: --chrom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "[--variant_site_quality VARIANT_SITE_QUALITY]\n[--variant_genotype_quality\
    \ VARIANT_GENOTYPE_QUALITY]\n[--variant_depth VARIANT_DEPTH] --chrom CHROM"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_vcf_before
  doc: "Full path to first Platypus VCF output from\nBAM_ANALYSIS module. This will\
    \ be treated as the\n'before' condition for comparisons."
  type: File
  outputBinding:
    glob: $(inputs.in_vcf_before)
- id: out_vcf_after
  doc: "Full path to second Platypus VCF output from\nBAM_ANALYSIS module. This will\
    \ be treated as the\n'after' condition for comparisons."
  type: File
  outputBinding:
    glob: $(inputs.in_vcf_after)
cwlVersion: v1.1
baseCommand:
- compare_vcfs
