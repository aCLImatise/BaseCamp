class: CommandLineTool
id: ananse_binding.cwl
inputs:
- id: pfm_file
  doc: PFM file with motifs
  type: File
  inputBinding:
    prefix: --pfmfile
- id: n_core
  doc: Number of core used
  type: string
  inputBinding:
    prefix: --ncore
- id: enhancers
  doc: BED file with RPKM on the 4th column
  type: File
  inputBinding:
    prefix: --enhancers
- id: annotation
  doc: Gene annotation in BED12 format
  type: string
  inputBinding:
    prefix: --annotation
- id: genome
  doc: Genome
  type: string
  inputBinding:
    prefix: --genome
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: filter_promoter
  doc: Filter promoters, True or False, input should be either 'True' or 'False'.
  type: string
  inputBinding:
    prefix: --filter_promoter
- id: keep_detail
  doc: Keep detail files, True or False, input should be either 'True' or 'False'.
  type: string
  inputBinding:
    prefix: --keep_detail
outputs: []
cwlVersion: v1.1
baseCommand:
- ananse
- binding
