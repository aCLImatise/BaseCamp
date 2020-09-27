class: CommandLineTool
id: segtools_feature_distance.cwl
inputs:
- id: in_clobber
  doc: Overwrite any existing output files.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: in_quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_stranded
  doc: "Strand correct features in the ANNOTATION file. If the\nfeature contains strand\
    \ information, the sign of the\ndistance value is used to portray the relationship\n\
    between the segment and the nearest stranded feature.\nA negative distance value\
    \ indicates that the segment\nis nearest the 5' end of the feature, whereas a\n\
    positive value indicates the segment is nearest the 3'\nend of the feature."
  type: boolean
  inputBinding:
    prefix: --stranded
- id: in_print_nearest
  doc: "The name of the nearest feature will be printed after\neach distance (with\
    \ a space separating the two) for\nfeatures from the ANNOTATION file. If multiple\n\
    features are equally near (or overlap), it is\nundefined which will be printed"
  type: boolean
  inputBinding:
    prefix: --print-nearest
- id: in_all_overlapping
  doc: "If multiple features in the ANNOTATION file overlap a\nsegment, a separate\
    \ line is printed for each\noverlapping segment-feature pair. This is most\ninteresting\
    \ with --print-nearest. Otherwise, the first\noverlapping segment will be used\
    \ for printing."
  type: boolean
  inputBinding:
    prefix: --all-overlapping
- id: in_no_plot
  doc: Do not generate any plots.
  type: boolean
  inputBinding:
    prefix: --noplot
- id: in_replot
  doc: "Load data from output tab files and regenerate plots\ninstead of recomputing\
    \ data."
  type: boolean
  inputBinding:
    prefix: --replot
- id: in_n_bins
  doc: "Number of bins to use in histogram for distances\ngreater than zero and less\
    \ than or equal to N*W.\nDistances of 0 and greater than N*W are placed in\nadditional\
    \ bins. If --stranded, N more bins are\nincluded in the negative direction and\
    \ a bin for\ndistances less than -N*W."
  type: long
  inputBinding:
    prefix: --n-bins
- id: in_bin_width
  doc: "Number of bases in each bin. If --stranded, bins cover\ndistances of (-Inf,-N*W),\
    \ ..., [-W,0), [0], (0,W],\n..., (N*W,Inf). Otherwise, the bins cover distances\
    \ of\n[0], (0,W], (W,2W], ..., (N*W,Inf)."
  type: long
  inputBinding:
    prefix: --bin-width
- id: in_mnemonic_file
  doc: "If specified, labels will be shown using mnemonics\nfound in FILE"
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: in_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: feature_distance]"
  type: File
  inputBinding:
    prefix: --outdir
- id: in_val_pass_val
  doc: "=VAL        Pass VAL for PARAM when calling R functions. May be\nspecified\
    \ multiple times.\n"
  type: string
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
- id: out_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: feature_distance]"
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- segtools-feature-distance
