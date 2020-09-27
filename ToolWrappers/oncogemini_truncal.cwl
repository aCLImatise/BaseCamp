class: CommandLineTool
id: oncogemini_truncal.cwl
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
  doc: "Optional: specify a maximum normal sample AF to allow\n(default is 0)"
  type: double
  inputBinding:
    prefix: --maxNorm
- id: in_patient
  doc: "Specify a patient to filter (should correspond to a\npatient_id in ped file)"
  type: File
  inputBinding:
    prefix: --patient
- id: in_samples
  doc: "Optional: rather than including all samples, a string of\ncomma-separated\
    \ specified samples to use (default is\n\"All\")"
  type: string
  inputBinding:
    prefix: --samples
- id: in_increase
  doc: "Optional: add amount to increase truncal AF filter between\nnormal and tumor\
    \ samples (default is 0)"
  type: double
  inputBinding:
    prefix: --increase
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
- truncal
