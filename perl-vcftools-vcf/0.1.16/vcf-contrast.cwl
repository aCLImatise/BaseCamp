#!/usr/bin/env cwl-runner

baseCommand:
- vcf-contrast
class: CommandLineTool
cwlVersion: v1.0
id: vcf-contrast
inputs:
- doc: Minimum depth across all -<list> samples
  id: min_dp
  inputBinding:
    prefix: --min-DP
  type: long
- doc: Skip sites with FILTER column different from PASS or "."
  id: apply_filters
  inputBinding:
    prefix: --apply-filters
  type: boolean
- doc: Print only records with novel genotypes
  id: novel_sites
  inputBinding:
    prefix: --novel-sites
  type: boolean
