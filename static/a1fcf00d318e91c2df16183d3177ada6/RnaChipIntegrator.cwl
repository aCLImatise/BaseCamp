class: CommandLineTool
id: RnaChipIntegrator.cwl
inputs:
- id: genes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: peaks
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cut_off
  doc: Maximum distance allowed between peaks and genes before being omitted from
    the analyses (default 1000000bp; set to zero for no cutoff, use --cutoffs instead
    to specify multiple distances)
  type: long
  inputBinding:
    prefix: --cutoff
- id: edge
  doc: "Gene edges to consider when calculating distances between genes and peaks,\
    \ either: 'tss' (default: only use gene TSS) or 'both' (use whichever of TSS or\
    \ TES gives shortest distance)"
  type: string
  inputBinding:
    prefix: --edge
- id: only_de
  doc: Only use genes flagged as differentially expressed in analyses (input gene
    data must include DE flags)
  type: boolean
  inputBinding:
    prefix: --only-DE
- id: number
  doc: Filter results after applying --cutoff[s] to report only the nearest MAX_CLOSEST
    number of pairs for each gene/peak from the analyses (default is to report all
    results)
  type: long
  inputBinding:
    prefix: --number
- id: promoter_region
  doc: Define promoter region with respect to gene TSS in the form UPSTREAM,DOWNSTREAM
    (default -1000 to 100bp of TSS)
  type: string
  inputBinding:
    prefix: --promoter_region
- id: name
  doc: Set basename for output files
  type: string
  inputBinding:
    prefix: --name
- id: compact
  doc: Output all hits for each peak or gene on a single line (cannot be used with
    --summary)
  type: boolean
  inputBinding:
    prefix: --compact
- id: summary
  doc: Output 'summary' for each analysis, consisting of only the top hit for each
    peak or gene (cannot be used with --compact)
  type: boolean
  inputBinding:
    prefix: --summary
- id: pad
  doc: Where less than MAX_CLOSEST hits are found, pad output with blanks to ensure
    that MAX_CLOSEST hits are still reported (nb --pad is implied for --compact)
  type: boolean
  inputBinding:
    prefix: --pad
- id: xls_x
  doc: Output XLSX spreadsheet with results
  type: boolean
  inputBinding:
    prefix: --xlsx
- id: cutoffs
  doc: Comma-separated list of one or more maximum distances allowed between peaks
    and genes (bp). An analysis will be performed for each GENES-PEAKS pair at each
    cutoff distance (default 1000000bp; set to zero for no cutoff NB cannot be used
    in conjunction with the --cutoff option)
  type: string
  inputBinding:
    prefix: --cutoffs
- id: genes
  doc: Specify multiple genes files (if used then peaks file(s) must be specified
    using --peaks option)
  type: string[]
  inputBinding:
    prefix: --genes
- id: peaks
  doc: Specify multiple peaks files (if used then genes file(s) must be specified
    using --genes option)
  type: string[]
  inputBinding:
    prefix: --peaks
- id: n_processors
  doc: 'Number of processors/cores to run the program using (default: 1)'
  type: string
  inputBinding:
    prefix: --nprocessors
- id: split_outputs
  doc: In batch mode write results of each analysis to separate file (default is to
    write all results to single file)
  type: boolean
  inputBinding:
    prefix: --split-outputs
- id: analyses
  doc: "Select which analyses to run: can be one of 'all' (default, runs all available\
    \ analyses), 'peak_centric' or 'gene_centric'"
  type: string
  inputBinding:
    prefix: --analyses
- id: feature
  doc: Rename 'gene' to FEATURE_TYPE in output (e.g. 'transcript' etc)
  type: string
  inputBinding:
    prefix: --feature
- id: peak_cols
  doc: List of 3 column indices (e.g. '1,4,5') indicating columns to use for chromosome,
    start and end from the input peak file (if not first three columns)
  type: string
  inputBinding:
    prefix: --peak_cols
- id: peak_id
  doc: Column to use as an ID for each peak from the input peak file (first column
    is column 1). If specified then IDs will be transferred to the output files when
    peaks are reported
  type: string
  inputBinding:
    prefix: --peak_id
outputs: []
cwlVersion: v1.1
baseCommand:
- RnaChipIntegrator
