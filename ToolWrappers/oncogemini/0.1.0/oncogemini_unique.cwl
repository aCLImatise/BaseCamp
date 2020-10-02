class: CommandLineTool
id: oncogemini_unique.cwl
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
- id: in_specific
  doc: "Identify unique variants that exist only in samples from\nthis comma-separated\
    \ list"
  type: string
  inputBinding:
    prefix: --specific
- id: in_max_others
  doc: "Specify a maximum sample AF to allow in other samples\n(default is 0)"
  type: double
  inputBinding:
    prefix: --maxOthers
- id: in_patient
  doc: "Specify a patient to filter (should correspond to a\npatient_id in ped file)"
  type: File
  inputBinding:
    prefix: --patient
- id: in_samples
  doc: "Rather than including all samples in filters, a string of\ncomma-separated\
    \ specified samples to use (default is\n\"All\")"
  type: string
  inputBinding:
    prefix: --samples
- id: in_increase
  doc: "Add amount to increase AF filter between unique and other\nsamples (default\
    \ is 0)"
  type: double
  inputBinding:
    prefix: --increase
- id: in_columns
  doc: "A list of columns that you would like returned (default\nis \"*\", which returns\
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
  doc: "Using purity estimates in ped file, make corrections to\nAF to be used"
  type: boolean
  inputBinding:
    prefix: --purity
- id: in_somatic_only
  doc: "Only include variants that have been marked as somatic\nvia the set_somatic\
    \ command"
  type: boolean
  inputBinding:
    prefix: --somatic_only
- id: in_cancers
  doc: "Restrict results to variants/genes associated with\nspecific cancer types\
    \ by entering a comma-separated\nstring of cancer type abbreviations (see documents\
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
- unique
