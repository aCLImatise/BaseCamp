class: CommandLineTool
id: bcftools_gtcheck.cwl
inputs:
- id: query_vcf_gz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: all_sites
  doc: output comparison for all sites
  type: boolean
  inputBinding:
    prefix: --all-sites
- id: cluster
  doc: <min,max>         min inter- and max intra-sample error [0.23,-0.3]
  type: boolean
  inputBinding:
    prefix: --cluster
- id: genotypes
  doc: genotypes to compare against
  type: File
  inputBinding:
    prefix: --genotypes
- id: gts_only
  doc: use GTs, ignore PLs, using <int> for unseen genotypes [99]
  type: long
  inputBinding:
    prefix: --GTs-only
- id: homs_only
  doc: homozygous genotypes only (useful for low coverage data)
  type: boolean
  inputBinding:
    prefix: --homs-only
- id: plot
  doc: plot
  type: string
  inputBinding:
    prefix: --plot
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: query_sample
  doc: query sample (by default the first sample is checked)
  type: string
  inputBinding:
    prefix: --query-sample
- id: target_sample
  doc: target sample in the -g file (used only for plotting)
  type: string
  inputBinding:
    prefix: --target-sample
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- gtcheck
