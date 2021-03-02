class: CommandLineTool
id: segtools_overlap.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean?
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_quick
  doc: Compute values only for one chromosome.
  type: boolean?
  inputBinding:
    prefix: --quick
- id: in_replot
  doc: "Load data from output tab files and regenerate plots\ninstead of recomputing\
    \ data."
  type: boolean?
  inputBinding:
    prefix: --replot
- id: in_no_plot
  doc: Do not generate any plots.
  type: boolean?
  inputBinding:
    prefix: --noplot
- id: in_cluster
  doc: Cluster rows and columns in heat map plot
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_print_segments
  doc: "For each group in the SEGMENTATION, a separate output\nfile will be created\
    \ that contains a list of all the\nsegments that the group was found to overlap\
    \ with.\nOutput files are named overlap.segments.X.txt, where X\nis the name of\
    \ the SEGMENTATION group."
  type: File?
  inputBinding:
    prefix: --print-segments
- id: in_max_contrast
  doc: "Saturate color range instead of having it go from 0 to\n1"
  type: boolean?
  inputBinding:
    prefix: --max-contrast
- id: in_by
  doc: "One of: ['segments', 'bases'], which determines the\ndefinition of overlap.\
    \ @segments: The value associated\nwith two features overlapping will be 1 if\
    \ they\noverlap, and 0 otherwise. @bases: The value associated\nwith two features\
    \ overlapping will be number of base\npairs which they overlap. [default: bases]"
  type: long?
  inputBinding:
    prefix: --by
- id: in_min_overlap
  doc: "The minimum number of base pairs that two features\nmust overlap for them\
    \ to be classified as overlapping.\nThis integer can be either positive (features\
    \ overlap\nonly if they share at least this many bases) or\nnegative (features\
    \ overlap if there are no more than\nthis many bases between them). Both a negative\
    \ min-\noverlap and --by=bases cannot be specified together.\n[default: 1]"
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_mnemonic_file
  doc: "If specified, labels will be shown using mnemonics\nfound in FILE"
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_feature_mnemonic_file
  doc: "If specified, ANNOTATION groups will be shown using\nmnemonics found in FILE."
  type: File?
  inputBinding:
    prefix: --feature-mnemonic-file
- id: in_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: overlap]"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_val_pass_val
  doc: "=VAL        Pass VAL for PARAM when calling R functions. May be\nspecified\
    \ multiple times.\n"
  type: string?
  inputBinding:
    prefix: -R
- id: in_segmentation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print_segments
  doc: "For each group in the SEGMENTATION, a separate output\nfile will be created\
    \ that contains a list of all the\nsegments that the group was found to overlap\
    \ with.\nOutput files are named overlap.segments.X.txt, where X\nis the name of\
    \ the SEGMENTATION group."
  type: File?
  outputBinding:
    glob: $(inputs.in_print_segments)
- id: out_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: overlap]"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-overlap
