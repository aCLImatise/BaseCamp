#!/usr/bin/env cwl-runner

baseCommand:
- compare_vcfs
class: CommandLineTool
cwlVersion: v1.0
id: compare_vcfs
inputs:
- doc: Full path to first Platypus VCF output from BAM_ANALYSIS module. This will
    be treated as the 'before' condition for comparisons.
  id: vcf_before
  inputBinding:
    prefix: --vcf_before
  type: string
- doc: Full path to second Platypus VCF output from BAM_ANALYSIS module. This will
    be treated as the 'after' condition for comparisons.
  id: vcf_after
  inputBinding:
    prefix: --vcf_after
  type: string
- doc: Name of output file (including path, if to be created elsewhere).
  id: output_file
  inputBinding:
    prefix: --output_file
  type: string
- doc: Consider all SNPs with a site quality (QUAL) greater than or equal to this
    value. Default is 30.
  id: variant_site_quality
  inputBinding:
    prefix: --variant_site_quality
  type: string
- doc: Consider all SNPs with a sample genotype quality greater than or equal to this
    value. Default is 30.
  id: variant_genotype_quality
  inputBinding:
    prefix: --variant_genotype_quality
  type: string
- doc: Consider all SNPs with a sample depth greater than or equal to this value.
    Default is 4.
  id: variant_depth
  inputBinding:
    prefix: --variant_depth
  type: string
- doc: Name of chromosome to analyze.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
