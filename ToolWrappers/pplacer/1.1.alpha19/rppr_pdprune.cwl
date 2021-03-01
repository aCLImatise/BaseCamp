class: CommandLineTool
id: rppr_pdprune.cwl
inputs:
- id: in_specify_filename_write
  doc: Specify the filename to write to.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean?
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_csv
  doc: Output the results as csv instead of a padded matrix.
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_cut_off
  doc: Specify the maximum branch length to be trimmed.
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_leaves
  doc: Specify the maximum number of leaves to leave un-trimmed.
  type: boolean?
  inputBinding:
    prefix: --leaves
- id: in_names_only
  doc: Only split out a list of names, rather than names and PD decrease.
  type: boolean?
  inputBinding:
    prefix: --names-only
- id: in_unsafe
  doc: Don't perform internal checks.
  type: boolean?
  inputBinding:
    prefix: --unsafe
- id: in_never_prune_from
  doc: Provide a file containing sequence names that will not be pruned.
  type: boolean?
  inputBinding:
    prefix: --never-prune-from
- id: in_never_prune_regex_from
  doc: Provide a file containing regular expressions; sequence names matching one
    of these will not be pruned.
  type: boolean?
  inputBinding:
    prefix: --never-prune-regex-from
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_pd_prune
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rppr
- pdprune
