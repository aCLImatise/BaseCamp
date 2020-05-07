class: CommandLineTool
id: vcf_contrast.cwl
inputs:
- id: min_dp
  doc: Minimum depth across all -<list> samples
  type: long
  inputBinding:
    prefix: --min-DP
- id: apply_filters
  doc: Skip sites with FILTER column different from PASS or "."
  type: boolean
  inputBinding:
    prefix: --apply-filters
- id: novel_sites
  doc: Print only records with novel genotypes
  type: boolean
  inputBinding:
    prefix: --novel-sites
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-contrast
