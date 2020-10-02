class: CommandLineTool
id: megalodon_extras_validate_results.cwl
inputs:
- id: in_control_megalodon_results_dirs
  doc: "Megalodon output directories for modified base control\nsample(s). Could be\
    \ a PCR or IVT sample. Either a\nsingle control for all modified samples or one\
    \ control\nsample for each modified sample should be provided."
  type: string[]
  inputBinding:
    prefix: --control-megalodon-results-dirs
- id: in_ground_truth_data
  doc: "Ground truth csv with (chrm, strand, pos, is_mod)\nvalues."
  type: string
  inputBinding:
    prefix: --ground-truth-data
- id: in_valid_sites
  doc: "VALID_SITES\nName and BED file containing sites over which to\nrestrict modified\
    \ base results. Multiple sets of valid\nsites may be provided. For example E.\
    \ coli 6mA sites\ncould be specified as: `--valid-sites \"Dam\nMethylation\" Dam_motif_sites.bed\
    \ --valid-sites \"EcoKI\nMethylation\" EcoKI_motif_sites.bed`."
  type: File
  inputBinding:
    prefix: --valid-sites
- id: in_strand_specific_sites
  doc: "Sites in --ground-truth-data and/or --valid-sites are\nstrand-specific. Default:\
    \ Sites are not strand\nspecific."
  type: boolean
  inputBinding:
    prefix: --strand-specific-sites
- id: in_allow_unbalance_classes
  doc: "Allow unbalanced classes in modified base metric\ncomputation. Default: Balance\
    \ size of modified and\ncanonical classes for each comparison made."
  type: boolean
  inputBinding:
    prefix: --allow-unbalance-classes
- id: in_results_labels
  doc: "Name for each Megalodon results directory. Control\ndirectories will have\
    \ the suffix \" Control\" appended\nto the names. Default: \"Sample 1\", \"Sample\
    \ 2\", ..."
  type: string[]
  inputBinding:
    prefix: --results-labels
- id: in_out_pdf
  doc: 'Output pdf filename. Default: megalodon_validation.pdf'
  type: File
  inputBinding:
    prefix: --out-pdf
- id: in_out_filename
  doc: 'Output filename for text summary. Default: stdout'
  type: File
  inputBinding:
    prefix: --out-filename
- id: in_quiet
  doc: Suppress progress information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_pdf
  doc: 'Output pdf filename. Default: megalodon_validation.pdf'
  type: File
  outputBinding:
    glob: $(inputs.in_out_pdf)
- id: out_out_filename
  doc: 'Output filename for text summary. Default: stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- validate
- results
