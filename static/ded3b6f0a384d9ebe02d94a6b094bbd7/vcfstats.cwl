class: CommandLineTool
id: vcfstats.cwl
inputs:
- id: region
  doc: specify a region on which to target the stats, requires a BGZF compressed file
    which has been indexed with tabix.  any number of regions may be specified.
  type: boolean
  inputBinding:
    prefix: --region
- id: add_info
  doc: add the statistics intermediate information to the VCF file, writing out VCF
    records instead of summary statistics
  type: boolean
  inputBinding:
    prefix: --add-info
- id: add_type
  doc: only add the type= field to the info (faster than -a)
  type: boolean
  inputBinding:
    prefix: --add-type
- id: no_length_frequency
  doc: don't out the indel and mnp length-frequency spectra
  type: boolean
  inputBinding:
    prefix: --no-length-frequency
- id: match_score
  doc: match score for SW algorithm
  type: string
  inputBinding:
    prefix: --match-score
- id: mismatch_score
  doc: mismatch score for SW algorithm
  type: string
  inputBinding:
    prefix: --mismatch-score
- id: gap_open_penalty
  doc: gap open penalty for SW algorithm
  type: string
  inputBinding:
    prefix: --gap-open-penalty
- id: gap_extend_penalty
  doc: gap extension penalty for SW algorithm
  type: string
  inputBinding:
    prefix: --gap-extend-penalty
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfstats
