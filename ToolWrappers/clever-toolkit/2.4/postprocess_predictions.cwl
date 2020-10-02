class: CommandLineTool
id: postprocess_predictions.cwl
inputs:
- id: in_minimum_expected_support_deletion
  doc: "Minimum expected support for deletion cliques (cliques\nwith lower support\
    \ are discarded)."
  type: string
  inputBinding:
    prefix: -d
- id: in_minimum_expected_support_insertion
  doc: "Minimum expected support for insertion cliques\n(cliques with lower support\
    \ are discarded)."
  type: string
  inputBinding:
    prefix: -i
- id: in_cov_bal
  doc: "Minimum coverage balance (=support/coverage). Filter\nis applied after merging\
    \ (default: disabled)."
  type: string
  inputBinding:
    prefix: --covbal
- id: in_minimum_coverage_clique
  doc: Minimum coverage at clique center.
  type: long
  inputBinding:
    prefix: -c
- id: in_minimum_individual_coverage
  doc: "Minimum individual coverage at clique center, that is,\nonly cliques are retains\
    \ for which ALL individuals\nhave at least the given coverage."
  type: string
  inputBinding:
    prefix: -C
- id: in_reevaluate_cliques_lead
  doc: "Re-evaluate which cliques lead to which sets of\nindividuals (requires standard\
    \ deviation to be given)."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_stddev
  doc: "Standard deviation of insert size (necessary for some\noptions)."
  type: long
  inputBinding:
    prefix: --stddev
- id: in_also_store_output
  doc: "Also store output in separate files for each sample.\nParameter: prefix of\
    \ filenames for samplewise output."
  type: string
  inputBinding:
    prefix: -S
- id: in_filename_read_samplenames
  doc: Filename to read samplenames from.
  type: File
  inputBinding:
    prefix: -N
- id: in_only_del
  doc: Only process deletions.
  type: boolean
  inputBinding:
    prefix: --only-del
- id: in_only_ins
  doc: Only process insertions.
  type: boolean
  inputBinding:
    prefix: --only-ins
- id: in_vcf
  doc: Output VCF format.
  type: boolean
  inputBinding:
    prefix: --vcf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- postprocess-predictions
