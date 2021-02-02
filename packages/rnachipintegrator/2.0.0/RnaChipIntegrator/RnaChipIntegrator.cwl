class: CommandLineTool
id: RnaChipIntegrator.cwl
inputs:
- id: in_cut_off
  doc: "Maximum distance allowed between peaks and genes\nbefore being omitted from\
    \ the analyses (default\n1000000bp; set to zero for no cutoff, use --cutoffs\n\
    instead to specify multiple distances)"
  type: long
  inputBinding:
    prefix: --cutoff
- id: in_edge
  doc: "Gene edges to consider when calculating distances\nbetween genes and peaks,\
    \ either: 'tss' (default: only\nuse gene TSS) or 'both' (use whichever of TSS\
    \ or TES\ngives shortest distance)"
  type: string
  inputBinding:
    prefix: --edge
- id: in_only_de
  doc: "Only use genes flagged as differentially expressed in\nanalyses (input gene\
    \ data must include DE flags)"
  type: boolean
  inputBinding:
    prefix: --only-DE
- id: in_number
  doc: "Filter results after applying --cutoff[s] to report\nonly the nearest MAX_CLOSEST\
    \ number of pairs for each\ngene/peak from the analyses (default is to report\
    \ all\nresults)"
  type: long
  inputBinding:
    prefix: --number
- id: in_promoter_region
  doc: "Define promoter region with respect to gene TSS in the\nform UPSTREAM,DOWNSTREAM\
    \ (default -1000 to 100bp of\nTSS)"
  type: long
  inputBinding:
    prefix: --promoter_region
- id: in_name
  doc: Set basename for output files
  type: string
  inputBinding:
    prefix: --name
- id: in_compact
  doc: "Output all hits for each peak or gene on a single line\n(cannot be used with\
    \ --summary)"
  type: boolean
  inputBinding:
    prefix: --compact
- id: in_summary
  doc: "Output 'summary' for each analysis, consisting of only\nthe top hit for each\
    \ peak or gene (cannot be used with\n--compact)"
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_pad
  doc: "Where less than MAX_CLOSEST hits are found, pad output\nwith blanks to ensure\
    \ that MAX_CLOSEST hits are still\nreported (nb --pad is implied for --compact)"
  type: boolean
  inputBinding:
    prefix: --pad
- id: in_xls_x
  doc: Output XLSX spreadsheet with results
  type: boolean
  inputBinding:
    prefix: --xlsx
- id: in_cutoffs
  doc: "Comma-separated list of one or more maximum distances\nallowed between peaks\
    \ and genes (bp). An analysis will\nbe performed for each GENES-PEAKS pair at\
    \ each cutoff\ndistance (default 1000000bp; set to zero for no cutoff\nNB cannot\
    \ be used in conjunction with the --cutoff\noption)"
  type: long
  inputBinding:
    prefix: --cutoffs
- id: in_specify_multiple_genes
  doc: "Specify multiple genes files (if used then peaks\nfile(s) must be specified\
    \ using --peaks option)"
  type: File[]
  inputBinding:
    prefix: --genes
- id: in_specify_multiple_files
  doc: "Specify multiple peaks files (if used then genes\nfile(s) must be specified\
    \ using --genes option)"
  type: File[]
  inputBinding:
    prefix: --peaks
- id: in_n_processors
  doc: "Number of processors/cores to run the program using\n(default: 1)"
  type: long
  inputBinding:
    prefix: --nprocessors
- id: in_split_outputs
  doc: "In batch mode write results of each analysis to\nseparate file (default is\
    \ to write all results to\nsingle file)"
  type: boolean
  inputBinding:
    prefix: --split-outputs
- id: in_analyses
  doc: "Select which analyses to run: can be one of 'all'\n(default, runs all available\
    \ analyses), 'peak_centric'\nor 'gene_centric'"
  type: string
  inputBinding:
    prefix: --analyses
- id: in_feature
  doc: "Rename 'gene' to FEATURE_TYPE in output (e.g.\n'transcript' etc)"
  type: string
  inputBinding:
    prefix: --feature
- id: in_peak_cols
  doc: "List of 3 column indices (e.g. '1,4,5') indicating\ncolumns to use for chromosome,\
    \ start and end from the\ninput peak file (if not first three columns)"
  type: File
  inputBinding:
    prefix: --peak_cols
- id: in_peak_id
  doc: "Column to use as an ID for each peak from the input\npeak file (first column\
    \ is column 1). If specified\nthen IDs will be transferred to the output files\
    \ when\npeaks are reported\n"
  type: File
  inputBinding:
    prefix: --peak_id
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_20
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RnaChipIntegrator
