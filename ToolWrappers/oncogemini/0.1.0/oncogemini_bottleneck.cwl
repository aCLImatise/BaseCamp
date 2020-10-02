class: CommandLineTool
id: oncogemini_bottleneck.cwl
inputs:
- id: in_mind_p
  doc: Minimum depth required in all samples default is 0)
  type: long
  inputBinding:
    prefix: --minDP
- id: in_ming_q
  doc: "Minimum genotype quality required in all samples (default\nis 0)"
  type: long
  inputBinding:
    prefix: --minGQ
- id: in_max_norm
  doc: Specify a maximum normal sample AF to allow (default is 0)
  type: double
  inputBinding:
    prefix: --maxNorm
- id: in_min_slope
  doc: "Minimum slope required for the AFs across samples (default\nis 0.05)"
  type: double
  inputBinding:
    prefix: --minSlope
- id: in_min_r
  doc: "Minimum r correlation coefficient required for AFs\n(default is 0.5)"
  type: double
  inputBinding:
    prefix: --minR
- id: in_samples
  doc: "Rather than including all samples, a string of comma-\nseparated specified\
    \ samples to use (default is \"All\")"
  type: string
  inputBinding:
    prefix: --samples
- id: in_min_end
  doc: "Minimum AF required of the sample representing the final\ntimepoint (default\
    \ is 0)"
  type: double
  inputBinding:
    prefix: --minEnd
- id: in_end_diff
  doc: "Minimum required AF difference between the samples\nrepresenting the first\
    \ and final timepoints (default is 0)"
  type: double
  inputBinding:
    prefix: --endDiff
- id: in_patient
  doc: "Specify a patient to filter (should correspond to a\npatient_id in ped file)"
  type: File
  inputBinding:
    prefix: --patient
- id: in_columns
  doc: "A list of columns that you would like returned (default is\n\"*\", which returns\
    \ every column)"
  type: string
  inputBinding:
    prefix: --columns
- id: in_filter
  doc: Restrictions to apply to variants (SQL syntax)
  type: string
  inputBinding:
    prefix: --filter
- id: in_purity
  doc: "Using purity estimates in ped file, make corrections to AF\nto be used"
  type: boolean
  inputBinding:
    prefix: --purity
- id: in_somatic_only
  doc: "Only include variants that have been marked as somatic via\nthe set_somatic\
    \ command"
  type: boolean
  inputBinding:
    prefix: --somatic_only
- id: in_cancers
  doc: "Restrict results to variants/genes associated with\nspecific cancer types\
    \ by entering a comma-separated string\nof cancer type abbreviations (see documents\
    \ for\nabbreviations) REQUIRES that db include\ncivic_gene_abbrevations and/or\
    \ cgi_gene_abbreviations\n"
  type: string
  inputBinding:
    prefix: --cancers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- bottleneck
