class: CommandLineTool
id: shiptv.cwl
inputs:
- id: in_newick
  doc: Phylogenetic tree Newick file  [required]
  type: File?
  inputBinding:
    prefix: --newick
- id: in_output_html
  doc: Output HTML tree path  [required]
  type: File?
  inputBinding:
    prefix: --output-html
- id: in_output_newick
  doc: Output Newick file
  type: File?
  inputBinding:
    prefix: --output-newick
- id: in_ref_genomes_genbank
  doc: Reference genome sequences Genbank file
  type: File?
  inputBinding:
    prefix: --ref-genomes-genbank
- id: in_output_metadata_table
  doc: Output metadata table path
  type: File?
  inputBinding:
    prefix: --output-metadata-table
- id: in_leaf_list
  doc: "Optional leaf names to select from\nphylogenetic tree for pruned tree\nvisualization.\
    \ One leaf name per line."
  type: File?
  inputBinding:
    prefix: --leaflist
- id: in_genbank_metadata_fields
  doc: "Optional fields to extract from Genbank\nsource metadata. One field per line."
  type: File?
  inputBinding:
    prefix: --genbank-metadata-fields
- id: in_metadata
  doc: "Optional tab-delimited metadata for user\nsamples to join with metadata derived\
    \ from\nreference genome sequences Genbank file.\nSample IDs must be in the first\
    \ column."
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_metadata_fields_in_order
  doc: "Optional list of fields in order to output\nin metadata table and HTML tree\n\
    visualization. One field per line."
  type: File?
  inputBinding:
    prefix: --metadata-fields-in-order
- id: in_no_fix_metadata
  doc: "Try to automatically fix metadata from\nreference Genbank file.  [default:\
    \ True]"
  type: boolean?
  inputBinding:
    prefix: --no-fix-metadata
- id: in_collapse_support
  doc: "Collapse internal branches below specified\nbootstrap support value (default\
    \ -1 for no\ncollapsing)  [default: -1.0]"
  type: double?
  inputBinding:
    prefix: --collapse-support
- id: in_no_highlight_user_samples
  doc: "Highlight user samples with metadata field\nin tree.  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --no-highlight-user-samples
- id: in_out_group
  doc: Tree outgroup taxa
  type: string?
  inputBinding:
    prefix: --outgroup
- id: in_no_midpoint_root
  doc: 'Set midpoint root  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --no-midpoint-root
- id: in_no_verbose
  doc: 'Verbose logs  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --no-verbose
- id: in_install_completion
  doc: Install completion for the current shell.
  type: boolean?
  inputBinding:
    prefix: --install-completion
- id: in_show_completion
  doc: "Show completion for the current shell, to\ncopy it or customize the installation."
  type: boolean?
  inputBinding:
    prefix: --show-completion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_html
  doc: Output HTML tree path  [required]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_html)
- id: out_output_newick
  doc: Output Newick file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_newick)
- id: out_output_metadata_table
  doc: Output metadata table path
  type: File?
  outputBinding:
    glob: $(inputs.in_output_metadata_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/shiptv:0.4.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- shiptv
