class: CommandLineTool
id: lofreq_uniq.cwl
inputs:
- id: in_vcf_in
  doc: Input vcf file listing variants [- = stdin; gzip supported]
  type: File?
  inputBinding:
    prefix: --vcf-in
- id: in_vcf_out
  doc: Output vcf file [- = stdout; gzip supported]
  type: File?
  inputBinding:
    prefix: --vcf-out
- id: in_uni_freq
  doc: Assume variants have uniform test frequency of this value (unused if <=0) [-1.000000]
  type: boolean?
  inputBinding:
    prefix: --uni-freq
- id: in_uniq_thresh
  doc: Minimum uniq phred-value required. Conflicts with -m. 0 for off (default=0)
  type: long?
  inputBinding:
    prefix: --uniq-thresh
- id: in_uniq_mtc
  doc: Uniq multiple testing correction type. One of 'bonf', 'holm' or 'fdr'. (default=MTC_FDR)
  type: string?
  inputBinding:
    prefix: --uniq-mtc
- id: in_uniq_alpha
  doc: Uniq Multiple testing correction p-value threshold (default=0.001000)
  type: double?
  inputBinding:
    prefix: --uniq-alpha
- id: in_uniq_n_tests
  doc: Uniq multiple testing correction p-value threshold (default=#vars)
  type: long?
  inputBinding:
    prefix: --uniq-ntests
- id: in_output_all
  doc: "Report all variants instead of only the ones, marked unique.\nNote, that variants\
    \ already filtered in input will not be printed."
  type: boolean?
  inputBinding:
    prefix: --output-all
- id: in_use_det_lim
  doc: "Report variants if they are above implied detection limit\nDefault is to use\
    \ binomial test to check for frequency differences"
  type: boolean?
  inputBinding:
    prefix: --use-det-lim
- id: in_use_orphan
  doc: Don't ignore anomalous read pairs / orphan reads
  type: boolean?
  inputBinding:
    prefix: --use-orphan
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
- id: in_indexed_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vcf_out
  doc: Output vcf file [- = stdout; gzip supported]
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf_out)
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq
- uniq
