class: CommandLineTool
id: lofreq_filter.cwl
inputs:
- id: in_in
  doc: VCF input file (no streaming supported; gzip supported)
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: 'VCF output file (default: - for stdout; gzip supported).'
  type: File?
  inputBinding:
    prefix: --out
- id: in_cov_min
  doc: Minimum coverage allowed (<1=off)
  type: long?
  inputBinding:
    prefix: --cov-min
- id: in_cov_max
  doc: Maximum coverage allowed (<1=off)
  type: long?
  inputBinding:
    prefix: --cov-max
- id: in_af_min
  doc: Minimum allele freq allowed (<1=off)
  type: double?
  inputBinding:
    prefix: --af-min
- id: in_af_max
  doc: Maximum allele freq allowed (<1=off)
  type: double?
  inputBinding:
    prefix: --af-max
- id: in_sb_thresh
  doc: Maximum phred-value allowed. Conflicts with -b.
  type: long?
  inputBinding:
    prefix: --sb-thresh
- id: in_sb_mtc
  doc: Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts
    with -B
  type: string?
  inputBinding:
    prefix: --sb-mtc
- id: in_sb_alpha
  doc: Multiple testing correction pvalue threshold
  type: double?
  inputBinding:
    prefix: --sb-alpha
- id: in_sb_no_compound
  doc: Don't use compound filter
  type: boolean?
  inputBinding:
    prefix: --sb-no-compound
- id: in_sb_incl_indels
  doc: Apply SB filter to indels as well
  type: boolean?
  inputBinding:
    prefix: --sb-incl-indels
- id: in_snv_qual_thresh
  doc: Minimum phred-value allowed. Conflicts with -q
  type: long?
  inputBinding:
    prefix: --snvqual-thresh
- id: in_snv_qual_mtc
  doc: Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts
    with -Q
  type: string?
  inputBinding:
    prefix: --snvqual-mtc
- id: in_snv_qual_alpha
  doc: Multiple testing correction pvalue threshold
  type: double?
  inputBinding:
    prefix: --snvqual-alpha
- id: in_snv_qual_n_tests
  doc: Number of performed SNV tests for multiple testing correction
  type: long?
  inputBinding:
    prefix: --snvqual-ntests
- id: in_in_del_qual_thresh
  doc: Minimum phred-value allowed. Conflicts with -q
  type: long?
  inputBinding:
    prefix: --indelqual-thresh
- id: in_in_del_qual_mtc
  doc: Multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. Conflicts
    with -Q
  type: string?
  inputBinding:
    prefix: --indelqual-mtc
- id: in_in_del_qual_alpha
  doc: Multiple testing correction pvalue threshold
  type: double?
  inputBinding:
    prefix: --indelqual-alpha
- id: in_in_del_qual_n_tests
  doc: Number of performed indel tests for multiple testing correction
  type: long?
  inputBinding:
    prefix: --indelqual-ntests
- id: in_only_indels
  doc: Keep InDels only
  type: boolean?
  inputBinding:
    prefix: --only-indels
- id: in_only_sn_vs
  doc: Keep SNVs only
  type: boolean?
  inputBinding:
    prefix: --only-snvs
- id: in_print_all
  doc: Print all, not just passed variants
  type: boolean?
  inputBinding:
    prefix: --print-all
- id: in_no_defaults
  doc: Remove all default filter settings
  type: boolean?
  inputBinding:
    prefix: --no-defaults
- id: in_verbose
  doc: Be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debugging
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'VCF output file (default: - for stdout; gzip supported).'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq
- filter
