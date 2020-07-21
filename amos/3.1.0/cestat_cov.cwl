class: CommandLineTool
id: ../../../cestat_cov.cwl
inputs:
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: recompute_mean_stdev
  doc: Recompute mean and stdev from data
  type: boolean
  inputBinding:
    prefix: -R
- id: dump_scaffoldcontig_iids
  doc: Dump scaffold/contig IIDs instead of EIDs
  type: boolean
  inputBinding:
    prefix: -i
- id: only_output_ce
  doc: Only output CE features outside float deviations
  type: double
  inputBinding:
    prefix: -f
- id: only_output_features
  doc: 'Only output features at least this length (default: 100)'
  type: string
  inputBinding:
    prefix: -l
- id: consider_scaffolds_contigs
  doc: Consider scaffolds instead of contigs
  type: boolean
  inputBinding:
    prefix: -S
- id: input_bedpe_file
  doc: The input is a BEDPE file, not an AMOS bank
  type: boolean
  inputBinding:
    prefix: -B
- id: use_library_mean
  doc: 'Use this as the library mean (default: 2244)'
  type: string
  inputBinding:
    prefix: -m
- id: use_library_stdev
  doc: 'Use this as the library stdev (default: 250)'
  type: string
  inputBinding:
    prefix: -d
- id: only_use_pairs
  doc: 'Only use pairs that are within rng deviations from the mean (default: 8)'
  type: string
  inputBinding:
    prefix: -r
- id: bank_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cestat-cov
