class: CommandLineTool
id: segtools_aggregation.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: segmentation
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mnemonic_file
  doc: If specified, labels will be shown using mnemonics found in FILE
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: outdir
  doc: 'File output directory (will be created if it does not exist) [default: feature_aggregation]'
  type: string
  inputBinding:
    prefix: --outdir
- id: clobber
  doc: Overwrite any existing output files.
  type: boolean
  inputBinding:
    prefix: --clobber
- id: quiet
  doc: Do not print diagnostic messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: quick
  doc: Compute values only for one chromosome.
  type: boolean
  inputBinding:
    prefix: --quick
- id: replot
  doc: Load data from output tab files and regenerate plots instead of recomputing
    data.
  type: boolean
  inputBinding:
    prefix: --replot
- id: no_plot
  doc: Do not generate any plots.
  type: boolean
  inputBinding:
    prefix: --noplot
- id: groups
  doc: Separate data into different groups based upon ANNOTATION's 'name'/'feature'
    field if --mode=region or --mode=point. Does nothing if --mode=gene.
  type: boolean
  inputBinding:
    prefix: --groups
- id: normalize
  doc: Plot the relative frequency of SEGMENTATION labels, normalized by the number
    of segments in that group instead of the raw counts (normalize over SEGMENTATION
    labels)
  type: boolean
  inputBinding:
    prefix: --normalize
- id: mode
  doc: 'one of: point, region, gene. [default: point]'
  type: string
  inputBinding:
    prefix: --mode
- id: flank_bases
  doc: 'Aggregate this many base pairs off each end of feature or gene [default: 500]'
  type: string
  inputBinding:
    prefix: --flank-bases
- id: region_samples
  doc: 'If --mode=region, aggregate over each internal feature by taking this many
    evenly-spaced samples. Warning: features with a length < N will be excluded from
    the results [default: 50]'
  type: string
  inputBinding:
    prefix: --region-samples
- id: intron_samples
  doc: 'Aggregate over each intron by taking this many evenly- spaced samples [default:
    50]'
  type: string
  inputBinding:
    prefix: --intron-samples
- id: exon_samples
  doc: 'Aggregate over each exon by taking this many evenly- spaced samples [default:
    25]'
  type: string
  inputBinding:
    prefix: --exon-samples
- id: r
  doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  type: string
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- segtools-aggregation
