class: CommandLineTool
id: vcfstats.cwl
inputs:
- id: in_region
  doc: "specify a region on which to target the stats, requires a BGZF\ncompressed\
    \ file which has been indexed with tabix.  any number of\nregions may be specified."
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_add_info
  doc: "add the statistics intermediate information to the VCF file,\nwriting out\
    \ VCF records instead of summary statistics"
  type: File?
  inputBinding:
    prefix: --add-info
- id: in_add_type
  doc: only add the type= field to the info (faster than -a)
  type: boolean?
  inputBinding:
    prefix: --add-type
- id: in_no_length_frequency
  doc: don't out the indel and mnp length-frequency spectra
  type: boolean?
  inputBinding:
    prefix: --no-length-frequency
- id: in_match_score
  doc: match score for SW algorithm
  type: string?
  inputBinding:
    prefix: --match-score
- id: in_mismatch_score
  doc: mismatch score for SW algorithm
  type: string?
  inputBinding:
    prefix: --mismatch-score
- id: in_gap_open_penalty
  doc: gap open penalty for SW algorithm
  type: string?
  inputBinding:
    prefix: --gap-open-penalty
- id: in_gap_extend_penalty
  doc: gap extension penalty for SW algorithm
  type: string?
  inputBinding:
    prefix: --gap-extend-penalty
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_add_info
  doc: "add the statistics intermediate information to the VCF file,\nwriting out\
    \ VCF records instead of summary statistics"
  type: File?
  outputBinding:
    glob: $(inputs.in_add_info)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfstats
