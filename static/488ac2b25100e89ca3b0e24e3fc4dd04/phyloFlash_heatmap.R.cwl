class: CommandLineTool
id: phyloFlash_heatmap.R.cwl
inputs:
- id: in_verbose
  doc: Be more talkative
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Be less talkative
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Show debug messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_min_ntu_count
  doc: Sum NTUs with less counts in pseudo NTU "Other". Default 50.
  type: long?
  inputBinding:
    prefix: --min-ntu-count
- id: in_no_split
  doc: Do not split heatmap
  type: boolean?
  inputBinding:
    prefix: --no-split
- id: in_split_regex
  doc: "Split heatmap using this regex on taxa. Multiple regex can be\nspecified comma\
    \ separated. Default 'Eukaryota'"
  type: string?
  inputBinding:
    prefix: --split-regex
- id: in_long_tax_names
  doc: Do not shorten taxa names to last two groups
  type: boolean?
  inputBinding:
    prefix: --long-taxnames
- id: in_absolute
  doc: Do not scale columns to percentages
  type: boolean?
  inputBinding:
    prefix: --absolute
- id: in_cluster_samples
  doc: "Use this method for clustering/sorting samples. Can be:\nalpha, ward.D, single,\
    \ complete, average, mcquitty, median, centroid, or custom.\nDefault is ward.D."
  type: string?
  inputBinding:
    prefix: --cluster-samples
- id: in_cluster_tax_a
  doc: "Use this method for clustering/sorting taxa. Can be:\nalpha, ward.D, single,\
    \ complete, average, mcquitty, median or centroid.\nDefault is ward.D"
  type: string?
  inputBinding:
    prefix: --cluster-taxa
- id: in_rows
  doc: "Component rows, in order, to render (separated by commas).\nValid terms are:\
    \ tree, map, chao and labels.\nDefault is tree,map,chao,labels."
  type: string?
  inputBinding:
    prefix: --rows
- id: in_cols
  doc: "Component columns, in order, to render (separated by commas).\nValid terms\
    \ are: labels, map and tree.\nDefault is labels,map,tree."
  type: string?
  inputBinding:
    prefix: --cols
- id: in_colors
  doc: Colors for heatmaps. Default is steelblue,indianred,green,orange.
  type: string?
  inputBinding:
    prefix: --colors
- id: in_out
  doc: Name of output file. Must end in .png or .pdf. Default is out.png.
  type: File?
  inputBinding:
    prefix: --out
- id: in_aa
  doc: "Type of anti-aliasing to use for PNG output. Can be one of default,\nnone,\
    \ gray, or subpixel. Default is gray."
  type: string?
  inputBinding:
    prefix: --aa
- id: in_out_size
  doc: "Size of output graphic in pixels (e.g. 100x100). Assumes 72 DPI for\nPDF.\
    \ Using \"auto\" for a dimension will attempt to guess at suitable\nsize. Default\
    \ autoXauto"
  type: long?
  inputBinding:
    prefix: --out-size
- id: in_library_name_from_file
  doc: Use thee filename to derive library name instead of parsing ...report.csv
  type: boolean?
  inputBinding:
    prefix: --library-name-from-file
- id: in_custom_distance_matrix_sample
  doc: "Import custom distance matrix for samples instead of calculating\nfrom abundance\
    \ matrix"
  type: string?
  inputBinding:
    prefix: --custom-distance-matrix-sample
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Name of output file. Must end in .png or .pdf. Default is out.png.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- phyloFlash_heatmap.R
