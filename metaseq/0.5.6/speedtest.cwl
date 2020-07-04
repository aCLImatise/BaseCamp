class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/speedtest.py.cwl
inputs:
- id: n_features
  doc: Number of random windows to make. The size of each feature is (start - stop)
    / nfeatures, so changing this parameter will affect the size of each feature.
  type: string
  inputBinding:
    prefix: --nfeatures
- id: chunksize
  doc: Number of windows to send to each process
  type: string
  inputBinding:
    prefix: --chunksize
- id: start
  doc: start coord of possible windows. See --nfeatures help regarding size.
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: stop coord of possible windows. See --nfeatures help regarding size.
  type: string
  inputBinding:
    prefix: --stop
- id: chrom
  doc: chromsome to make windows on
  type: string
  inputBinding:
    prefix: --chrom
- id: type
  doc: Only use the specified file types. Either "all" (default) or a comma-separated
    list of [bam, bigwig, bed, bigbed].
  type: string
  inputBinding:
    prefix: --type
- id: prefix
  doc: 'Prefix of filenames to use. Expects files with this prefix, and the following
    suffixes: .bam, .bigwig, .bed.gz (should already be tabixed), .bigbed. Default:
    /tmp/tmpot432_h7/lib/python2.7/site- packages/metaseq/test/data/x'
  type: string
  inputBinding:
    prefix: --prefix
- id: plot_prefix
  doc: Filename used to save the resulting plot. Default is ./speedtest
  type: string
  inputBinding:
    prefix: --plot-prefix
- id: bins
  doc: Number of bins for each feature
  type: string
  inputBinding:
    prefix: --bins
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: benchmarking
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: meta_seq
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: package
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- speedtest.py
