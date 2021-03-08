class: CommandLineTool
id: phylorank_outliers.cwl
inputs:
- id: in_viral
  doc: indicates a viral input tree and taxonomy
  type: boolean?
  inputBinding:
    prefix: --viral
- id: in_fixed_root
  doc: use single fixed root to infer outliers
  type: boolean?
  inputBinding:
    prefix: --fixed_root
- id: in_trusted_tax_a_file
  doc: "file indicating trusted taxonomic groups to use for\ninferring distribution\
    \ (default: all taxa)"
  type: File?
  inputBinding:
    prefix: --trusted_taxa_file
- id: in_min_children
  doc: "minimum required child taxa to consider taxa when\ninferring distribution\
    \ (default: 2)"
  type: long?
  inputBinding:
    prefix: --min_children
- id: in_min_support
  doc: "minimum support value to consider taxa when inferring\ndistribution (default:\
    \ 0) (default: 0.0)"
  type: long?
  inputBinding:
    prefix: --min_support
- id: in_f_measure_table
  doc: table indicating F-measure score for each taxa
  type: string?
  inputBinding:
    prefix: --fmeasure_table
- id: in_min_f_measure
  doc: "minimum F-measure to consider taxa when inferring\ndistribution (default:\
    \ 0.95)"
  type: double?
  inputBinding:
    prefix: --min_fmeasure
- id: in_f_measure_mono
  doc: "minimum F-measure to consider taxa monophyletic\n(default: 0.95)"
  type: double?
  inputBinding:
    prefix: --fmeasure_mono
- id: in_highlight_poly_phyl_y
  doc: "highlight taxa with an F-measure less than\n--fmeasure_mono"
  type: boolean?
  inputBinding:
    prefix: --highlight_polyphyly
- id: in_mb_let
  doc: "calculate 'mean branch length to extent taxa' instead\nof 'relative evolutionary\
    \ distances'"
  type: boolean?
  inputBinding:
    prefix: --mblet
- id: in_plot_tax_a_file
  doc: "file indicating taxonomic groups to plot (default: all\ntaxa)"
  type: File?
  inputBinding:
    prefix: --plot_taxa_file
- id: in_plot_domain
  doc: show domain rank in plot
  type: boolean?
  inputBinding:
    prefix: --plot_domain
- id: in_plot_dist_tax_a_only
  doc: only plot taxa used to infer distribution
  type: boolean?
  inputBinding:
    prefix: --plot_dist_taxa_only
- id: in_highlight_tax_a_file
  doc: file indicating taxa to highlight
  type: File?
  inputBinding:
    prefix: --highlight_taxa_file
- id: in_dpi
  doc: 'DPI of plots (default: 96)'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_verbose_table
  doc: add additional columns to output table
  type: boolean?
  inputBinding:
    prefix: --verbose_table
- id: in_skip_m_pld_three
  doc: skip plots requiring mpld3
  type: boolean?
  inputBinding:
    prefix: --skip_mpld3
- id: in_input_tree
  doc: decorated tree for inferring RED outliers
  type: string
  inputBinding:
    position: 0
- id: in_taxonomy_file
  doc: taxonomy file for inferring RED outliers
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: desired output directory for generated files
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylorank:0.1.10--py_0
cwlVersion: v1.1
baseCommand:
- phylorank
- outliers
