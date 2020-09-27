class: CommandLineTool
id: qfy.py.cwl
inputs:
- id: in_adjust_conf_regions
  doc: "When hap.py was run with --adjust-conf-regions, on the\noriginal VCF, then\
    \ quantify needs the truthset VCF in\norder to correctly reproduce the results.\
    \ This switch\nallows us to pass the truth VCF into quantify."
  type: string
  inputBinding:
    prefix: --adjust-conf-regions
- id: in_type
  doc: Annotation format in input VCF file.
  type: string
  inputBinding:
    prefix: --type
- id: in_false_positives
  doc: "False positive / confident call regions (.bed or\n.bed.gz). Calls outside\
    \ these regions will be labelled\nas UNK."
  type: File
  inputBinding:
    prefix: --false-positives
- id: in_stratification
  doc: "Stratification file list (TSV format -- first column\nis region name, second\
    \ column is file name)."
  type: File
  inputBinding:
    prefix: --stratification
- id: in_stratification_region
  doc: "Add single stratification region, e.g.\n--stratification-region TEST:test.bed"
  type: string
  inputBinding:
    prefix: --stratification-region
- id: in_stratification_fix_chr
  doc: Add chr prefix to stratification files if necessary
  type: boolean
  inputBinding:
    prefix: --stratification-fixchr
- id: in_write_vcf
  doc: Write an annotated VCF.
  type: boolean
  inputBinding:
    prefix: --write-vcf
- id: in_write_counts
  doc: Write advanced counts and metrics.
  type: boolean
  inputBinding:
    prefix: --write-counts
- id: in_no_write_counts
  doc: Do not write advanced counts and metrics.
  type: boolean
  inputBinding:
    prefix: --no-write-counts
- id: in_output_vtc
  doc: "Write VTC field in the final VCF which gives the\ncounts each position has\
    \ contributed to."
  type: boolean
  inputBinding:
    prefix: --output-vtc
- id: in_preserve_info
  doc: "When using XCMP, preserve and merge the INFO fields in\ntruth and query. Useful\
    \ for ROC computation."
  type: boolean
  inputBinding:
    prefix: --preserve-info
- id: in_roc
  doc: "Select a feature to produce a ROC on (INFO feature,\nQUAL, GQX, ...)."
  type: string
  inputBinding:
    prefix: --roc
- id: in_no_roc
  doc: "Disable ROC computation and only output summary\nstatistics for more concise\
    \ output."
  type: boolean
  inputBinding:
    prefix: --no-roc
- id: in_roc_regions
  doc: "Select a list of regions to compute ROCs in. By\ndefault, only the '*' region\
    \ will produce ROC output\n(aggregate variant counts)."
  type: string
  inputBinding:
    prefix: --roc-regions
- id: in_roc_filter
  doc: Select a filter to ignore when making ROCs.
  type: string
  inputBinding:
    prefix: --roc-filter
- id: in_roc_delta
  doc: Minimum spacing between ROC QQ levels.
  type: string
  inputBinding:
    prefix: --roc-delta
- id: in_ci_alpha
  doc: "Confidence level for Jeffrey's CI for recall,\nprecision and fraction of non-assessed\
    \ calls."
  type: string
  inputBinding:
    prefix: --ci-alpha
- id: in_no_json
  doc: Disable JSON file output.
  type: File
  inputBinding:
    prefix: --no-json
- id: in_report_prefix
  doc: Filename prefix for report output.
  type: File
  inputBinding:
    prefix: --report-prefix
- id: in_reference
  doc: Specify a reference file.
  type: File
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of threads to use.
  type: long
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write logging information into file rather than to
  type: File
  inputBinding:
    prefix: --logfile
- id: in_quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_stderr
  doc: --bcf                 Use BCF internally. This is the default when the input
  type: string
  inputBinding:
    position: 0
- id: in_header_dot
  doc: --verbose             Raise logging level from warning to info.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_json
  doc: Disable JSON file output.
  type: File
  outputBinding:
    glob: $(inputs.in_no_json)
- id: out_report_prefix
  doc: Filename prefix for report output.
  type: File
  outputBinding:
    glob: $(inputs.in_report_prefix)
cwlVersion: v1.1
baseCommand:
- qfy.py
