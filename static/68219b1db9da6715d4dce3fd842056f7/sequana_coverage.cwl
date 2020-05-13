class: CommandLineTool
id: sequana_coverage.cwl
inputs:
- id: input
  doc: 'Input file in BED or BAM format. If a BAM file is provided, it will be converted
    locally to a BED file using genomecov, which must be installed. (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: chromosome
  doc: 'Chromosome number (if only one chromosome found, the single chromosome is
    chosen automatically). Otherwise all chromosomes are analysed. You may want to
    analyse only one in which case, use this parameter (e.g., -c 1). !!START AT INDEX
    0 !! (default: -1)'
  type: string
  inputBinding:
    prefix: --chromosome
- id: circular
  doc: 'If the DNA of the organism is circular (typically viruses or bacteria), set
    to True (default: False)'
  type: boolean
  inputBinding:
    prefix: --circular
- id: no_html
  doc: 'Do not create any HTML reports. Save ROIs and statistics only. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-html
- id: no_multi_qc
  doc: 'Do not create any multiqc HTML page. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-multiqc
- id: debug_level
  doc: 'set to DEBUG, INFO, WARNING, CRITICAL, ERROR (default: INFO)'
  type: string
  inputBinding:
    prefix: --debug-level
- id: level
  doc: 'set to DEBUG, INFO, WARNING, CRITICAL, ERROR (default: INFO)'
  type: string
  inputBinding:
    prefix: --level
- id: genbank
  doc: 'a valid genbank annotation (default: None)'
  type: string
  inputBinding:
    prefix: --genbank
- id: reference
  doc: 'If available, you can provide a reference (ENA/NCBI). It must have the same
    length as the one used to create the BAM or BED file. If provided, it is used
    to create the coverage versus GC content image (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: window_gc
  doc: 'Length of the running window to compute the GC content (default: 201)'
  type: string
  inputBinding:
    prefix: --window-gc
- id: n_levels
  doc: 'Number of levels in the contour (default: 3)'
  type: string
  inputBinding:
    prefix: --nlevels
- id: window_median
  doc: 'Length of the running median window (default 20001, recommended for bacteria).
    For short genome (below 100000 bases), we set this parameter to one fifth of the
    genome length . (default: 20001)'
  type: string
  inputBinding:
    prefix: --window-median
- id: mixture_models
  doc: 'Number of mixture models to use (default 2, although if sequencing depth is
    below 8, k is set to 1 automatically). To ignore that behaviour set k to the required
    value (default: 2)'
  type: string
  inputBinding:
    prefix: --mixture-models
- id: low_threshold
  doc: 'lower threshold (zscore) of the confidence interval. Overwrite value given
    by --threshold/-T (default: None)'
  type: string
  inputBinding:
    prefix: --low-threshold
- id: high_threshold
  doc: 'higher threshold (zscore) of the confidence interval. Overwrite value given
    by --threshold/-T (default: None)'
  type: string
  inputBinding:
    prefix: --high-threshold
- id: threshold
  doc: 'set lower and higher thresholds of the confidence interval. (default: 4)'
  type: string
  inputBinding:
    prefix: --threshold
- id: clustering_parameter
  doc: 'set lower and higher double threshold parameter (in [0,1]). Do not use value
    close to zero. Ideally, around 0.5. lower value will tend to cluster more than
    higher value (default: 0.5)'
  type: string
  inputBinding:
    prefix: --clustering-parameter
- id: s
  doc: '[minimum=1000000], --chunk-size [minimum=1000000] Length of the chunk to be
    used for the analysis. (default: 5000000)'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: '[minimum=2], --binning [minimum=2] merge consecutive (non overlapping) data
    points, taking the mean. This is useful for large genome (e.g. human). This allows
    a faster computation, especially for CNV detection were only large windows are
    of interest. For instance, using a binning of 50 or 100 allows the human genome
    to be analysed. (default: None)'
  type: boolean
  inputBinding:
    prefix: -B
- id: cnv_clustering
  doc: 'Two consecutive ROIs are merged when their distance in bases is below this
    parameter. If set to -1, not used. (default: -1)'
  type: string
  inputBinding:
    prefix: --cnv-clustering
- id: database
  doc: 'Download the reference from one of these database (default ENA) (default:
    ENA)'
  type: string
  inputBinding:
    prefix: --database
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_coverage
