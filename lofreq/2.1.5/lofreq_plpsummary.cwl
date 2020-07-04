class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lofreq_plpsummary.cwl
inputs:
- id: _ref_file
  doc: '| --ref FILE              Indexed reference fasta file (gzip supported) [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: _file_vcf
  doc: '| --out FILE              Vcf output file [- = stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: _region_limit
  doc: '| --region STR            Limit calls to this region (chrom:start-end) [null]'
  type: boolean
  inputBinding:
    prefix: -r
- id: _bed_file
  doc: '| --bed FILE              List of positions (chr pos) or regions (BED) [null]'
  type: boolean
  inputBinding:
    prefix: -l
- id: _minbq_int
  doc: '| --min-bq INT            Skip any base with baseQ smaller than INT [6]'
  type: boolean
  inputBinding:
    prefix: -q
- id: _minaltbq_int
  doc: '| --min-alt-bq INT        Skip alternate bases with baseQ smaller than INT
    [6]'
  type: boolean
  inputBinding:
    prefix: -Q
- id: _defaltbq_int
  doc: '| --def-alt-bq INT        Overwrite baseQs of alternate bases (that passed
    bq filter) with this value (-1: use median ref-bq; 0: keep) [0]'
  type: boolean
  inputBinding:
    prefix: -R
- id: _minjq_int
  doc: '| --min-jq INT            Skip any base with joinedQ smaller than INT [0]'
  type: boolean
  inputBinding:
    prefix: -j
- id: _minaltjq_int
  doc: '| --min-alt-jq INT        Skip alternate bases with joinedQ smaller than INT
    [0]'
  type: boolean
  inputBinding:
    prefix: -J
- id: _defaltjq_int
  doc: '| --def-alt-jq INT        Overwrite joinedQs of alternate bases (that passed
    jq filter) with this value (-1: use median ref-bq; 0: keep) [0]'
  type: boolean
  inputBinding:
    prefix: -K
- id: _nobaq_disable
  doc: '| --no-baq                Disable use of base-alignment quality (BAQ)'
  type: boolean
  inputBinding:
    prefix: -B
- id: _noidaq_use
  doc: "| --no-idaq               Don't use IDAQ values (NOT recommended under ANY\
    \ circumstances other than debugging)"
  type: boolean
  inputBinding:
    prefix: -A
- id: _delete_preexisting
  doc: '| --del-baq               Delete pre-existing BAQ values, i.e. compute even
    if already present in BAM'
  type: boolean
  inputBinding:
    prefix: -D
- id: _noextbaq_use
  doc: "| --no-ext-baq            Use 'normal' BAQ (samtools default) instead of extended\
    \ BAQ (both computed on the fly if not already present in lb tag)"
  type: boolean
  inputBinding:
    prefix: -e
- id: _minmq_int
  doc: '| --min-mq INT            Skip reads with mapping quality smaller than INT
    [0]'
  type: boolean
  inputBinding:
    prefix: -m
- id: _maxmq_int
  doc: '| --max-mq INT            Cap mapping quality at INT [255]'
  type: boolean
  inputBinding:
    prefix: -M
- id: _nomq_dons
  doc: "| --no-mq                 Don't merge mapping quality in LoFreq's model"
  type: boolean
  inputBinding:
    prefix: -N
- id: call_indels
  doc: 'Enable indel calls (note: preprocess your file to include indel alignment
    qualities!)'
  type: boolean
  inputBinding:
    prefix: --call-indels
- id: only_indels
  doc: Only call indels; no SNVs
  type: boolean
  inputBinding:
    prefix: --only-indels
- id: _srcqual_enable
  doc: '| --src-qual              Enable computation of source quality'
  type: boolean
  inputBinding:
    prefix: -s
- id: _file_ignore
  doc: '| --ign-vcf FILE          Ignore variants in this vcf file for source quality
    computation. Multiple files can be given separated by commas'
  type: boolean
  inputBinding:
    prefix: -S
- id: _int_then
  doc: '| --def-nm-q INT          If >= 0, then replace non-match base qualities with
    this default value [-1]'
  type: boolean
  inputBinding:
    prefix: -T
- id: _sig_pvalue
  doc: '| --sig                   P-Value cutoff / significance level [0.010000]'
  type: boolean
  inputBinding:
    prefix: -a
- id: _bonf_bonferroni
  doc: "| --bonf                  Bonferroni factor. 'dynamic' (increase per actually\
    \ performed test) or INT ['dynamic']"
  type: boolean
  inputBinding:
    prefix: -b
- id: _int_test
  doc: '| --min-cov INT           Test only positions having at least this coverage
    [1] (note: without --no-default-filter default filters (incl. coverage) kick in
    after predictions are done)'
  type: boolean
  inputBinding:
    prefix: -C
- id: _maxdepth_int
  doc: "| --max-depth INT         Cap coverage at this depth [1000000] --illumina-1.3\
    \          Assume the quality is Illumina-1.3-1.7/ASCII+64 encoded --use-orphan\
    \            Count anomalous read pairs (i.e. where mate is not aligned properly)\
    \ --plp-summary-only      No variant calling. Just output pileup summary per column\
    \ --no-default-filter     Don't run default 'lofreq filter' automatically after\
    \ calling variants --force-overwrite       Overwrite any existing output --verbose\
    \               Be verbose --debug                 Enable debugging"
  type: boolean
  inputBinding:
    prefix: -d
- id: lo_freq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: call
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- plpsummary
