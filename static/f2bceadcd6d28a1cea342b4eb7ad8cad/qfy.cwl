class: CommandLineTool
id: qfy.py.cwl
inputs:
- id: in_vcf
  doc: Comparison intermediate VCF file to quantify (two column TRUTH/QUERY format)
  type: string
  inputBinding:
    position: 0
- id: adjust_conf_regions
  doc: When hap.py was run with --adjust-conf-regions, on the original VCF, then quantify
    needs the truthset VCF in order to correctly reproduce the results. This switch
    allows us to pass the truth VCF into quantify.
  type: string
  inputBinding:
    prefix: --adjust-conf-regions
- id: type
  doc: Annotation format in input VCF file.
  type: string
  inputBinding:
    prefix: --type
- id: false_positives
  doc: False positive / confident call regions (.bed or .bed.gz). Calls outside these
    regions will be labelled as UNK.
  type: string
  inputBinding:
    prefix: --false-positives
- id: stratification
  doc: Stratification file list (TSV format -- first column is region name, second
    column is file name).
  type: string
  inputBinding:
    prefix: --stratification
- id: stratification_region
  doc: Add single stratification region, e.g. --stratification-region TEST:test.bed
  type: string
  inputBinding:
    prefix: --stratification-region
- id: stratification_fix_chr
  doc: Add chr prefix to stratification files if necessary
  type: boolean
  inputBinding:
    prefix: --stratification-fixchr
- id: write_vcf
  doc: Write an annotated VCF.
  type: boolean
  inputBinding:
    prefix: --write-vcf
- id: write_counts
  doc: Write advanced counts and metrics.
  type: boolean
  inputBinding:
    prefix: --write-counts
- id: no_write_counts
  doc: Do not write advanced counts and metrics.
  type: boolean
  inputBinding:
    prefix: --no-write-counts
- id: output_vtc
  doc: Write VTC field in the final VCF which gives the counts each position has contributed
    to.
  type: boolean
  inputBinding:
    prefix: --output-vtc
- id: preserve_info
  doc: When using XCMP, preserve and merge the INFO fields in truth and query. Useful
    for ROC computation.
  type: boolean
  inputBinding:
    prefix: --preserve-info
- id: roc
  doc: Select a feature to produce a ROC on (INFO feature, QUAL, GQX, ...).
  type: string
  inputBinding:
    prefix: --roc
- id: no_roc
  doc: Disable ROC computation and only output summary statistics for more concise
    output.
  type: boolean
  inputBinding:
    prefix: --no-roc
- id: roc_regions
  doc: Select a list of regions to compute ROCs in. By default, only the '*' region
    will produce ROC output (aggregate variant counts).
  type: string
  inputBinding:
    prefix: --roc-regions
- id: roc_filter
  doc: Select a filter to ignore when making ROCs.
  type: string
  inputBinding:
    prefix: --roc-filter
- id: roc_delta
  doc: Minimum spacing between ROC QQ levels.
  type: string
  inputBinding:
    prefix: --roc-delta
- id: ci_alpha
  doc: Confidence level for Jeffrey's CI for recall, precision and fraction of non-assessed
    calls.
  type: string
  inputBinding:
    prefix: --ci-alpha
- id: no_json
  doc: Disable JSON file output.
  type: boolean
  inputBinding:
    prefix: --no-json
- id: report_prefix
  doc: Filename prefix for report output.
  type: string
  inputBinding:
    prefix: --report-prefix
- id: reference
  doc: Specify a reference file.
  type: string
  inputBinding:
    prefix: --reference
- id: threads
  doc: Number of threads to use.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write logging information into file rather than to stderr
  type: string
  inputBinding:
    prefix: --logfile
- id: bcf
  doc: Use BCF internally. This is the default when the input file is in BCF format
    already. Using BCF can speed up temp file access, but may fail for VCF files that
    have broken headers or records that don't comply with the header.
  type: boolean
  inputBinding:
    prefix: --bcf
- id: verbose
  doc: Raise logging level from warning to info.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- qfy.py
