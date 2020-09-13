class: CommandLineTool
id: ../../../sequana_coverage.cwl
inputs:
- id: in_input
  doc: "Input file in BED or BAM format. If a BAM file is\nprovided, it will be converted\
    \ locally to a BED file\nusing genomecov, which must be installed. (default:\n\
    None)"
  type: File
  inputBinding:
    prefix: --input
- id: in_chromosome
  doc: "Chromosome number (if only one chromosome found, the\nsingle chromosome is\
    \ chosen automatically). Otherwise\nall chromosomes are analysed. You may want\
    \ to analyse\nonly one in which case, use this parameter (e.g., -c\n1). !!START\
    \ AT INDEX 0 !! (default: -1)"
  type: long
  inputBinding:
    prefix: --chromosome
- id: in_circular
  doc: "If the DNA of the organism is circular (typically\nviruses or bacteria), set\
    \ to True (default: False)"
  type: boolean
  inputBinding:
    prefix: --circular
- id: in_output_directory
  doc: "name of the output (report) directory. (default:\nreport)"
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_no_html
  doc: "Do not create any HTML reports. Save ROIs and\nstatistics only. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --no-html
- id: in_no_multi_qc
  doc: 'Do not create any multiqc HTML page. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-multiqc
- id: in_debug_level
  doc: "set to DEBUG, INFO, WARNING, CRITICAL, ERROR (default:\nINFO)"
  type: string
  inputBinding:
    prefix: --debug-level
- id: in_level
  doc: "set to DEBUG, INFO, WARNING, CRITICAL, ERROR (default:\nINFO)"
  type: string
  inputBinding:
    prefix: --level
- id: in_genbank
  doc: 'a valid genbank annotation (default: None)'
  type: string
  inputBinding:
    prefix: --genbank
- id: in_reference
  doc: "If available, you can provide a reference (ENA/NCBI).\nIt must have the same\
    \ length as the one used to create\nthe BAM or BED file. If provided, it is used\
    \ to create\nthe coverage versus GC content image (default: None)"
  type: long
  inputBinding:
    prefix: --reference
- id: in_window_gc
  doc: "Length of the running window to compute the GC content\n(default: 201)"
  type: long
  inputBinding:
    prefix: --window-gc
- id: in_n_levels
  doc: 'Number of levels in the contour (default: 3)'
  type: long
  inputBinding:
    prefix: --nlevels
- id: in_window_median
  doc: "Length of the running median window (default 20001,\nrecommended for bacteria).\
    \ For short genome (below\n100000 bases), we set this parameter to one fifth of\n\
    the genome length . (default: 20001)"
  type: long
  inputBinding:
    prefix: --window-median
- id: in_mixture_models
  doc: "Number of mixture models to use (default 2, although\nif sequencing depth\
    \ is below 8, k is set to 1\nautomatically). To ignore that behaviour set k to\
    \ the\nrequired value (default: 2)"
  type: long
  inputBinding:
    prefix: --mixture-models
- id: in_low_threshold
  doc: "lower threshold (zscore) of the confidence interval.\nOverwrite value given\
    \ by --threshold/-T (default:\nNone)"
  type: string
  inputBinding:
    prefix: --low-threshold
- id: in_high_threshold
  doc: "higher threshold (zscore) of the confidence interval.\nOverwrite value given\
    \ by --threshold/-T (default:\nNone)"
  type: string
  inputBinding:
    prefix: --high-threshold
- id: in_threshold
  doc: "set lower and higher thresholds of the confidence\ninterval. (default: 4)"
  type: long
  inputBinding:
    prefix: --threshold
- id: in_clustering_parameter
  doc: "set lower and higher double threshold parameter (in\n[0,1]). Do not use value\
    \ close to zero. Ideally,\naround 0.5. lower value will tend to cluster more than\n\
    higher value (default: 0.5)"
  type: double
  inputBinding:
    prefix: --clustering-parameter
- id: in_length_chunk_used
  doc: "[minimum=1000000], --chunk-size [minimum=1000000]\nLength of the chunk to\
    \ be used for the analysis.\n(default: 5000000)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_merge_consecutive_data
  doc: "[minimum=2], --binning [minimum=2]\nmerge consecutive (non overlapping) data\
    \ points,\ntaking the mean. This is useful for large genome (e.g.\nhuman). This\
    \ allows a faster computation, especially\nfor CNV detection were only large windows\
    \ are of\ninterest. For instance, using a binning of 50 or 100\nallows the human\
    \ genome to be analysed. (default:\nNone)"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_cnv_clustering
  doc: "Two consecutive ROIs are merged when their distance in\nbases is below this\
    \ parameter. If set to -1, not used.\n(default: -1)"
  type: long
  inputBinding:
    prefix: --cnv-clustering
- id: in_download_reference
  doc: ''
  type: string
  inputBinding:
    prefix: --download-reference
- id: in_download_genbank
  doc: ''
  type: string
  inputBinding:
    prefix: --download-genbank
- id: in_database
  doc: "Download the reference from one of these database\n(default ENA) (default:\
    \ ENA)"
  type: string
  inputBinding:
    prefix: --database
- id: in_welcome
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_se_quan_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "name of the output (report) directory. (default:\nreport)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- sequana_coverage
