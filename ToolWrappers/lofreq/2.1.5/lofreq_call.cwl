class: CommandLineTool
id: lofreq_call.cwl
inputs:
- id: in__ref_file
  doc: '| --ref FILE              Indexed reference fasta file (gzip supported) [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__file_vcf
  doc: '| --out FILE              Vcf output file [- = stdout]'
  type: File
  inputBinding:
    prefix: -o
- id: in__region_str
  doc: '| --region STR            Limit calls to this region (chrom:start-end) [null]'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__bed_file
  doc: '| --bed FILE              List of positions (chr pos) or regions (BED) [null]'
  type: boolean
  inputBinding:
    prefix: -l
- id: in__minbq_int
  doc: '| --min-bq INT            Skip any base with baseQ smaller than INT [6]'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__minaltbq_int
  doc: '| --min-alt-bq INT        Skip alternate bases with baseQ smaller than INT
    [6]'
  type: boolean
  inputBinding:
    prefix: -Q
- id: in__defaltbq_int
  doc: '| --def-alt-bq INT        Overwrite baseQs of alternate bases (that passed
    bq filter) with this value (-1: use median ref-bq; 0: keep) [0]'
  type: boolean
  inputBinding:
    prefix: -R
- id: in__minjq_int
  doc: '| --min-jq INT            Skip any base with joinedQ smaller than INT [0]'
  type: boolean
  inputBinding:
    prefix: -j
- id: in__minaltjq_int
  doc: '| --min-alt-jq INT        Skip alternate bases with joinedQ smaller than INT
    [0]'
  type: boolean
  inputBinding:
    prefix: -J
- id: in__defaltjq_int
  doc: '| --def-alt-jq INT        Overwrite joinedQs of alternate bases (that passed
    jq filter) with this value (-1: use median ref-bq; 0: keep) [0]'
  type: boolean
  inputBinding:
    prefix: -K
- id: in__nobaq_disable
  doc: '| --no-baq                Disable use of base-alignment quality (BAQ)'
  type: boolean
  inputBinding:
    prefix: -B
- id: in__noidaq_use
  doc: "| --no-idaq               Don't use IDAQ values (NOT recommended under ANY\
    \ circumstances other than debugging)"
  type: boolean
  inputBinding:
    prefix: -A
- id: in__delbaq_values
  doc: '| --del-baq               Delete pre-existing BAQ values, i.e. compute even
    if already present in BAM'
  type: boolean
  inputBinding:
    prefix: -D
- id: in__noextbaq_use
  doc: "| --no-ext-baq            Use 'normal' BAQ (samtools default) instead of extended\
    \ BAQ (both computed on the fly if not already present in lb tag)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in__minmq_int
  doc: '| --min-mq INT            Skip reads with mapping quality smaller than INT
    [0]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__maxmq_quality
  doc: '| --max-mq INT            Cap mapping quality at INT [255]'
  type: boolean
  inputBinding:
    prefix: -M
- id: in__nomq_dons
  doc: "| --no-mq                 Don't merge mapping quality in LoFreq's model"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_call_indels
  doc: 'Enable indel calls (note: preprocess your file to include indel alignment
    qualities!)'
  type: boolean
  inputBinding:
    prefix: --call-indels
- id: in_only_indels
  doc: Only call indels; no SNVs
  type: boolean
  inputBinding:
    prefix: --only-indels
- id: in__srcqual_enable
  doc: '| --src-qual              Enable computation of source quality'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__ignore_variants
  doc: '| --ign-vcf FILE          Ignore variants in this vcf file for source quality
    computation. Multiple files can be given separated by commas'
  type: boolean
  inputBinding:
    prefix: -S
- id: in__int_then
  doc: '| --def-nm-q INT          If >= 0, then replace non-match base qualities with
    this default value [-1]'
  type: boolean
  inputBinding:
    prefix: -T
- id: in__sig_cutoff
  doc: '| --sig                   P-Value cutoff / significance level [0.010000]'
  type: boolean
  inputBinding:
    prefix: -a
- id: in__bonf_factor
  doc: "| --bonf                  Bonferroni factor. 'dynamic' (increase per actually\
    \ performed test) or INT ['dynamic']"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__mincov_test
  doc: "| --min-cov INT           Test only positions having at least this coverage\
    \ [1]\n(note: without --no-default-filter default filters (incl. coverage) kick\
    \ in after predictions are done)"
  type: boolean
  inputBinding:
    prefix: -C
- id: in__maxdepth_int
  doc: '| --max-depth INT         Cap coverage at this depth [1000000]'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_illumina_one_dot_three
  doc: Assume the quality is Illumina-1.3-1.7/ASCII+64 encoded
  type: boolean
  inputBinding:
    prefix: --illumina-1.3
- id: in_use_orphan
  doc: Count anomalous read pairs (i.e. where mate is not aligned properly)
  type: boolean
  inputBinding:
    prefix: --use-orphan
- id: in_plp_summary_only
  doc: No variant calling. Just output pileup summary per column
  type: boolean
  inputBinding:
    prefix: --plp-summary-only
- id: in_no_default_filter
  doc: Don't run default 'lofreq filter' automatically after calling variants
  type: boolean
  inputBinding:
    prefix: --no-default-filter
- id: in_force_overwrite
  doc: Overwrite any existing output
  type: boolean
  inputBinding:
    prefix: --force-overwrite
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__file_vcf
  doc: '| --out FILE              Vcf output file [- = stdout]'
  type: File
  outputBinding:
    glob: $(inputs.in__file_vcf)
cwlVersion: v1.1
baseCommand:
- lofreq
- call
