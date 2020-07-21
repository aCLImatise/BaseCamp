class: CommandLineTool
id: ../../../oncogemini_bottleneck.cwl
inputs:
- id: mind_p
  doc: Minimum depth required in all samples default is 0)
  type: long
  inputBinding:
    prefix: --minDP
- id: ming_q
  doc: Minimum genotype quality required in all samples (default is 0)
  type: long
  inputBinding:
    prefix: --minGQ
- id: max_norm
  doc: Specify a maximum normal sample AF to allow (default is 0)
  type: double
  inputBinding:
    prefix: --maxNorm
- id: min_slope
  doc: Minimum slope required for the AFs across samples (default is 0.05)
  type: double
  inputBinding:
    prefix: --minSlope
- id: min_r
  doc: Minimum r correlation coefficient required for AFs (default is 0.5)
  type: double
  inputBinding:
    prefix: --minR
- id: samples
  doc: Rather than including all samples, a string of comma- separated specified samples
    to use (default is "All")
  type: string
  inputBinding:
    prefix: --samples
- id: min_end
  doc: Minimum AF required of the sample representing the final timepoint (default
    is 0)
  type: double
  inputBinding:
    prefix: --minEnd
- id: end_diff
  doc: Minimum required AF difference between the samples representing the first and
    final timepoints (default is 0)
  type: double
  inputBinding:
    prefix: --endDiff
- id: patient
  doc: Specify a patient to filter (should correspond to a patient_id in ped file)
  type: string
  inputBinding:
    prefix: --patient
- id: columns
  doc: A list of columns that you would like returned (default is "*", which returns
    every column)
  type: string
  inputBinding:
    prefix: --columns
- id: filter
  doc: Restrictions to apply to variants (SQL syntax)
  type: string
  inputBinding:
    prefix: --filter
- id: purity
  doc: Using purity estimates in ped file, make corrections to AF to be used
  type: boolean
  inputBinding:
    prefix: --purity
- id: somatic_only
  doc: Only include variants that have been marked as somatic via the set_somatic
    command
  type: boolean
  inputBinding:
    prefix: --somatic_only
- id: cancers
  doc: Restrict results to variants/genes associated with specific cancer types by
    entering a comma-separated string of cancer type abbreviations (see documents
    for abbreviations) REQUIRES that db include civic_gene_abbrevations and/or cgi_gene_abbreviations
  type: string
  inputBinding:
    prefix: --cancers
- id: db
  doc: The name of the database to be queried
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oncogemini
- bottleneck
