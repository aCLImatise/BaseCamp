#!/usr/bin/env cwl-runner

baseCommand:
- qfy.py
class: CommandLineTool
cwlVersion: v1.0
id: qfy.py
inputs:
- doc: Comparison intermediate VCF file to quantify (two column TRUTH/QUERY format)
  id: in_vcf
  inputBinding:
    position: 0
  type: string
- doc: When hap.py was run with --adjust-conf-regions, on the original VCF, then quantify
    needs the truthset VCF in order to correctly reproduce the results. This switch
    allows us to pass the truth VCF into quantify.
  id: adjust_conf_regions
  inputBinding:
    prefix: --adjust-conf-regions
  type: string
- doc: Annotation format in input VCF file.
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: False positive / confident call regions (.bed or .bed.gz). Calls outside these
    regions will be labelled as UNK.
  id: false_positives
  inputBinding:
    prefix: --false-positives
  type: string
- doc: Stratification file list (TSV format -- first column is region name, second
    column is file name).
  id: stratification
  inputBinding:
    prefix: --stratification
  type: string
- doc: Add single stratification region, e.g. --stratification-region TEST:test.bed
  id: stratification_region
  inputBinding:
    prefix: --stratification-region
  type: string
- doc: Add chr prefix to stratification files if necessary
  id: stratification_fix_chr
  inputBinding:
    prefix: --stratification-fixchr
  type: boolean
- doc: Write an annotated VCF.
  id: write_vcf
  inputBinding:
    prefix: --write-vcf
  type: boolean
- doc: Write advanced counts and metrics.
  id: write_counts
  inputBinding:
    prefix: --write-counts
  type: boolean
- doc: Do not write advanced counts and metrics.
  id: no_write_counts
  inputBinding:
    prefix: --no-write-counts
  type: boolean
- doc: Write VTC field in the final VCF which gives the counts each position has contributed
    to.
  id: output_vtc
  inputBinding:
    prefix: --output-vtc
  type: boolean
- doc: When using XCMP, preserve and merge the INFO fields in truth and query. Useful
    for ROC computation.
  id: preserve_info
  inputBinding:
    prefix: --preserve-info
  type: boolean
- doc: Select a feature to produce a ROC on (INFO feature, QUAL, GQX, ...).
  id: roc
  inputBinding:
    prefix: --roc
  type: string
- doc: Disable ROC computation and only output summary statistics for more concise
    output.
  id: no_roc
  inputBinding:
    prefix: --no-roc
  type: boolean
- doc: Select a list of regions to compute ROCs in. By default, only the '*' region
    will produce ROC output (aggregate variant counts).
  id: roc_regions
  inputBinding:
    prefix: --roc-regions
  type: string
- doc: Select a filter to ignore when making ROCs.
  id: roc_filter
  inputBinding:
    prefix: --roc-filter
  type: string
- doc: Minimum spacing between ROC QQ levels.
  id: roc_delta
  inputBinding:
    prefix: --roc-delta
  type: string
- doc: Confidence level for Jeffrey's CI for recall, precision and fraction of non-assessed
    calls.
  id: ci_alpha
  inputBinding:
    prefix: --ci-alpha
  type: string
- doc: Disable JSON file output.
  id: no_json
  inputBinding:
    prefix: --no-json
  type: boolean
- doc: Filename prefix for report output.
  id: report_prefix
  inputBinding:
    prefix: --report-prefix
  type: string
- doc: Specify a reference file.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Number of threads to use.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Write logging information into file rather than to stderr
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: Use BCF internally. This is the default when the input file is in BCF format
    already. Using BCF can speed up temp file access, but may fail for VCF files that
    have broken headers or records that don't comply with the header.
  id: bcf
  inputBinding:
    prefix: --bcf
  type: boolean
- doc: Raise logging level from warning to info.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Set logging level to output errors only.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
