#!/usr/bin/env cwl-runner

baseCommand:
- segtools-aggregation
class: CommandLineTool
cwlVersion: v1.0
id: segtools-aggregation
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: segmentation
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: annotation
  inputBinding:
    position: 2
  type: string
- doc: If specified, labels will be shown using mnemonics found in FILE
  id: mnemonic_file
  inputBinding:
    prefix: --mnemonic-file
  type: File
- doc: 'File output directory (will be created if it does not exist) [default: feature_aggregation]'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: Overwrite any existing output files.
  id: clobber
  inputBinding:
    prefix: --clobber
  type: boolean
- doc: Do not print diagnostic messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Compute values only for one chromosome.
  id: quick
  inputBinding:
    prefix: --quick
  type: boolean
- doc: Load data from output tab files and regenerate plots instead of recomputing
    data.
  id: replot
  inputBinding:
    prefix: --replot
  type: boolean
- doc: Do not generate any plots.
  id: no_plot
  inputBinding:
    prefix: --noplot
  type: boolean
- doc: Separate data into different groups based upon ANNOTATION's 'name'/'feature'
    field if --mode=region or --mode=point. Does nothing if --mode=gene.
  id: groups
  inputBinding:
    prefix: --groups
  type: boolean
- doc: Plot the relative frequency of SEGMENTATION labels, normalized by the number
    of segments in that group instead of the raw counts (normalize over SEGMENTATION
    labels)
  id: normalize
  inputBinding:
    prefix: --normalize
  type: boolean
- doc: 'one of: point, region, gene. [default: point]'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: 'Aggregate this many base pairs off each end of feature or gene [default: 500]'
  id: flank_bases
  inputBinding:
    prefix: --flank-bases
  type: string
- doc: 'If --mode=region, aggregate over each internal feature by taking this many
    evenly-spaced samples. Warning: features with a length < N will be excluded from
    the results [default: 50]'
  id: region_samples
  inputBinding:
    prefix: --region-samples
  type: string
- doc: 'Aggregate over each intron by taking this many evenly- spaced samples [default:
    50]'
  id: intron_samples
  inputBinding:
    prefix: --intron-samples
  type: string
- doc: 'Aggregate over each exon by taking this many evenly- spaced samples [default:
    25]'
  id: exon_samples
  inputBinding:
    prefix: --exon-samples
  type: string
- doc: =VAL        Pass VAL for PARAM when calling R functions. May be specified multiple
    times.
  id: r
  inputBinding:
    prefix: -R
  type: string
