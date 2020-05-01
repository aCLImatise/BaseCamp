#!/usr/bin/env cwl-runner

baseCommand:
- speedtest.py
class: CommandLineTool
cwlVersion: v1.0
id: speedtest.py
inputs:
- doc: Number of random windows to make. The size of each feature is (start - stop)
    / nfeatures, so changing this parameter will affect the size of each feature.
  id: n_features
  inputBinding:
    prefix: --nfeatures
  type: string
- doc: Number of windows to send to each process
  id: chunksize
  inputBinding:
    prefix: --chunksize
  type: string
- doc: start coord of possible windows. See --nfeatures help regarding size.
  id: start
  inputBinding:
    prefix: --start
  type: string
- doc: stop coord of possible windows. See --nfeatures help regarding size.
  id: stop
  inputBinding:
    prefix: --stop
  type: string
- doc: chromsome to make windows on
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: Only use the specified file types. Either "all" (default) or a comma-separated
    list of [bam, bigwig, bed, bigbed].
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: 'Prefix of filenames to use. Expects files with this prefix, and the following
    suffixes: .bam, .bigwig, .bed.gz (should already be tabixed), .bigbed. Default:
    /tmp/tmpzhvnufo7/lib/python2.7/site- packages/metaseq/test/data/x'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Filename used to save the resulting plot. Default is ./speedtest
  id: plot_prefix
  inputBinding:
    prefix: --plot-prefix
  type: string
- doc: Number of bins for each feature
  id: bins
  inputBinding:
    prefix: --bins
  type: string
