class: CommandLineTool
id: bcftools_gtcheck.cwl
inputs:
- id: in_all_sites
  doc: output comparison for all sites
  type: boolean
  inputBinding:
    prefix: --all-sites
- id: in_cluster
  doc: <min,max>         min inter- and max intra-sample error [0.23,-0.3]
  type: boolean
  inputBinding:
    prefix: --cluster
- id: in_genotypes
  doc: genotypes to compare against
  type: File
  inputBinding:
    prefix: --genotypes
- id: in_gts_only
  doc: use GTs, ignore PLs, using <int> for unseen genotypes [99]
  type: long
  inputBinding:
    prefix: --GTs-only
- id: in_homs_only
  doc: homozygous genotypes only (useful for low coverage data)
  type: boolean
  inputBinding:
    prefix: --homs-only
- id: in_plot
  doc: plot
  type: string
  inputBinding:
    prefix: --plot
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: in_query_sample
  doc: query sample (by default the first sample is checked)
  type: string
  inputBinding:
    prefix: --query-sample
- id: in_target_sample
  doc: target sample in the -g file (used only for plotting)
  type: File
  inputBinding:
    prefix: --target-sample
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: in_query_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcftools
- gtcheck
