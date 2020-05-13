class: CommandLineTool
id: add_gff_info_counts.cwl
inputs:
- id: samples
  doc: Sample names, in the same order as the count files [required]
  type: string
  inputBinding:
    prefix: --samples
- id: count_files
  doc: Count file(s)  [required]
  type: string
  inputBinding:
    prefix: --count-files
- id: fp_kms
  doc: If the counts are FPKMS
  type: boolean
  inputBinding:
    prefix: --fpkms
- id: feature_counts
  doc: If the counts files are from featureCounts
  type: boolean
  inputBinding:
    prefix: --featureCounts
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- counts
