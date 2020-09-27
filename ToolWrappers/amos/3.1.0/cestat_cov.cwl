class: CommandLineTool
id: cestat_cov.cwl
inputs:
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_recompute_mean_stdev
  doc: Recompute mean and stdev from data
  type: boolean
  inputBinding:
    prefix: -R
- id: in_dump_scaffoldcontig_iids
  doc: Dump scaffold/contig IIDs instead of EIDs
  type: boolean
  inputBinding:
    prefix: -i
- id: in_only_output_ce
  doc: Only output CE features outside float deviations
  type: double
  inputBinding:
    prefix: -f
- id: in_only_output_features
  doc: 'Only output features at least this length (default: 100)'
  type: long
  inputBinding:
    prefix: -l
- id: in_consider_scaffolds_instead
  doc: Consider scaffolds instead of contigs
  type: boolean
  inputBinding:
    prefix: -S
- id: in_input_bedpe_file
  doc: The input is a BEDPE file, not an AMOS bank
  type: boolean
  inputBinding:
    prefix: -B
- id: in_use_library_mean
  doc: 'Use this as the library mean (default: 2244)'
  type: long
  inputBinding:
    prefix: -m
- id: in_use_library_stdev
  doc: 'Use this as the library stdev (default: 250)'
  type: long
  inputBinding:
    prefix: -d
- id: in_only_use_pairs
  doc: 'Only use pairs that are within rng deviations from the mean (default: 8)'
  type: long
  inputBinding:
    prefix: -r
- id: in_bank_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cestat-cov
