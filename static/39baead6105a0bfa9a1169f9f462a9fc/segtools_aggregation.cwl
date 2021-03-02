class: CommandLineTool
id: segtools_aggregation.cwl
inputs:
- id: in_mnemonic_file
  doc: "If specified, labels will be shown using mnemonics\nfound in FILE"
  type: File?
  inputBinding:
    prefix: --mnemonic-file
- id: in_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: feature_aggregation]"
  type: File?
  inputBinding:
    prefix: --outdir
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
- id: in_groups
  doc: "Separate data into different groups based upon\nANNOTATION's 'name'/'feature'\
    \ field if --mode=region\nor --mode=point. Does nothing if --mode=gene."
  type: boolean?
  inputBinding:
    prefix: --groups
- id: in_normalize
  doc: "Plot the relative frequency of SEGMENTATION labels,\nnormalized by the number\
    \ of segments in that group\ninstead of the raw counts (normalize over SEGMENTATION\n\
    labels)"
  type: boolean?
  inputBinding:
    prefix: --normalize
- id: in_mode
  doc: 'one of: point, region, gene. [default: point]'
  type: string?
  inputBinding:
    prefix: --mode
- id: in_flank_bases
  doc: "Aggregate this many base pairs off each end of feature\nor gene [default:\
    \ 500]"
  type: long?
  inputBinding:
    prefix: --flank-bases
- id: in_region_samples
  doc: "If --mode=region, aggregate over each internal feature\nby taking this many\
    \ evenly-spaced samples. Warning:\nfeatures with a length < N will be excluded\
    \ from the\nresults [default: 50]"
  type: long?
  inputBinding:
    prefix: --region-samples
- id: in_intron_samples
  doc: "Aggregate over each intron by taking this many evenly-\nspaced samples [default:\
    \ 50]"
  type: long?
  inputBinding:
    prefix: --intron-samples
- id: in_exon_samples
  doc: "Aggregate over each exon by taking this many evenly-\nspaced samples [default:\
    \ 25]"
  type: long?
  inputBinding:
    prefix: --exon-samples
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
- id: out_outdir
  doc: "File output directory (will be created if it does not\nexist) [default: feature_aggregation]"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- segtools-aggregation
