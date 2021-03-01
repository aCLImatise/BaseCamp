class: CommandLineTool
id: lofreq_plpsummary.cwl
inputs:
- id: in_ref
  doc: Indexed reference fasta file (gzip supported) [null]
  type: File?
  inputBinding:
    prefix: --ref
- id: in_out
  doc: Vcf output file [- = stdout]
  type: File?
  inputBinding:
    prefix: --out
- id: in_region
  doc: Limit calls to this region (chrom:start-end) [null]
  type: string?
  inputBinding:
    prefix: --region
- id: in_bed
  doc: List of positions (chr pos) or regions (BED) [null]
  type: File?
  inputBinding:
    prefix: --bed
- id: in_min_bq
  doc: Skip any base with baseQ smaller than INT [6]
  type: long?
  inputBinding:
    prefix: --min-bq
- id: in_min_alt_bq
  doc: Skip alternate bases with baseQ smaller than INT [6]
  type: long?
  inputBinding:
    prefix: --min-alt-bq
- id: in_def_alt_bq
  doc: 'Overwrite baseQs of alternate bases (that passed bq filter) with this value
    (-1: use median ref-bq; 0: keep) [0]'
  type: long?
  inputBinding:
    prefix: --def-alt-bq
- id: in_min_jq
  doc: Skip any base with joinedQ smaller than INT [0]
  type: long?
  inputBinding:
    prefix: --min-jq
- id: in_min_alt_jq
  doc: Skip alternate bases with joinedQ smaller than INT [0]
  type: long?
  inputBinding:
    prefix: --min-alt-jq
- id: in_def_alt_jq
  doc: 'Overwrite joinedQs of alternate bases (that passed jq filter) with this value
    (-1: use median ref-bq; 0: keep) [0]'
  type: long?
  inputBinding:
    prefix: --def-alt-jq
- id: in_no_baq
  doc: Disable use of base-alignment quality (BAQ)
  type: boolean?
  inputBinding:
    prefix: --no-baq
- id: in_no_i_daq
  doc: Don't use IDAQ values (NOT recommended under ANY circumstances other than debugging)
  type: boolean?
  inputBinding:
    prefix: --no-idaq
- id: in_del_baq
  doc: Delete pre-existing BAQ values, i.e. compute even if already present in BAM
  type: boolean?
  inputBinding:
    prefix: --del-baq
- id: in_no_ext_baq
  doc: Use 'normal' BAQ (samtools default) instead of extended BAQ (both computed
    on the fly if not already present in lb tag)
  type: boolean?
  inputBinding:
    prefix: --no-ext-baq
- id: in_min_mq
  doc: Skip reads with mapping quality smaller than INT [0]
  type: long?
  inputBinding:
    prefix: --min-mq
- id: in_max_mq
  doc: Cap mapping quality at INT [255]
  type: long?
  inputBinding:
    prefix: --max-mq
- id: in_no_mq
  doc: Don't merge mapping quality in LoFreq's model
  type: boolean?
  inputBinding:
    prefix: --no-mq
- id: in_call_indels
  doc: 'Enable indel calls (note: preprocess your file to include indel alignment
    qualities!)'
  type: boolean?
  inputBinding:
    prefix: --call-indels
- id: in_only_indels
  doc: Only call indels; no SNVs
  type: boolean?
  inputBinding:
    prefix: --only-indels
- id: in_src_qual
  doc: Enable computation of source quality
  type: boolean?
  inputBinding:
    prefix: --src-qual
- id: in_ign_vcf
  doc: Ignore variants in this vcf file for source quality computation. Multiple files
    can be given separated by commas
  type: File?
  inputBinding:
    prefix: --ign-vcf
- id: in_def_nm_q
  doc: If >= 0, then replace non-match base qualities with this default value [-1]
  type: long?
  inputBinding:
    prefix: --def-nm-q
- id: in_sig
  doc: P-Value cutoff / significance level [0.010000]
  type: boolean?
  inputBinding:
    prefix: --sig
- id: in_bon_f
  doc: Bonferroni factor. 'dynamic' (increase per actually performed test) or INT
    ['dynamic']
  type: boolean?
  inputBinding:
    prefix: --bonf
- id: in_min_cov
  doc: "Test only positions having at least this coverage [1]\n(note: without --no-default-filter\
    \ default filters (incl. coverage) kick in after predictions are done)"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_max_depth
  doc: Cap coverage at this depth [1000000]
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_illumina_one_dot_three
  doc: Assume the quality is Illumina-1.3-1.7/ASCII+64 encoded
  type: boolean?
  inputBinding:
    prefix: --illumina-1.3
- id: in_use_orphan
  doc: Count anomalous read pairs (i.e. where mate is not aligned properly)
  type: boolean?
  inputBinding:
    prefix: --use-orphan
- id: in_plp_summary_only
  doc: No variant calling. Just output pileup summary per column
  type: boolean?
  inputBinding:
    prefix: --plp-summary-only
- id: in_no_default_filter
  doc: Don't run default 'lofreq filter' automatically after calling variants
  type: boolean?
  inputBinding:
    prefix: --no-default-filter
- id: in_force_overwrite
  doc: Overwrite any existing output
  type: boolean?
  inputBinding:
    prefix: --force-overwrite
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
- id: in_lo_freq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_call
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Vcf output file [- = stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq
- plpsummary
