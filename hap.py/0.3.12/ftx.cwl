#!/usr/bin/env cwl-runner

baseCommand:
- ftx.py
class: CommandLineTool
cwlVersion: v1.0
id: ftx.py
inputs:
- doc: Input VCF file
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Output file name. Output will be in CSV format
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Location for bcftools view (e.g. chr1)
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: Restrict analysis to given (sparse) regions (using -R in bcftools).
  id: restrict_regions
  inputBinding:
    prefix: --restrict-regions
  type: string
- doc: Restrict analysis to given (dense) regions (using -T in bcftools).
  id: target_regions
  inputBinding:
    prefix: --target-regions
  type: string
- doc: Use to include failing variants in comparison.
  id: include_non_pass
  inputBinding:
    prefix: --include-nonpass
  type: boolean
- doc: "Select a feature table to output. Options are: ['hcc.strelka.snv', 'hcc.pisces.snv',\
    \ 'hcc.mutect.snv', 'hcc.varscan2.indel', 'admix.strelka.snv', 'generic', 'hcc.pisces.indel',\
    \ 'hcc.strelka.indel', 'admix.strelka.indel', 'hcc.varscan2.snv', 'hcc.mutect.indel']"
  id: feature_table
  inputBinding:
    prefix: --feature-table
  type: string
- doc: We will output a lable column, this value will go in there -- default is the
    input filename.
  id: feature_label
  inputBinding:
    prefix: --feature-label
  type: string
- doc: pass one or more BAM files for feature table extraction
  id: bam
  inputBinding:
    prefix: --bam
  type: string
- doc: Specify a reference file for normalization.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Enable running of bcftools norm on the input file.
  id: normalize
  inputBinding:
    prefix: --normalize
  type: boolean
- doc: Replace numeric chromosome names in the query by chr*-type names
  id: fix_chr
  inputBinding:
    prefix: --fix-chr
  type: boolean
