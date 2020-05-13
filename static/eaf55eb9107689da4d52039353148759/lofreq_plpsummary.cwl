class: CommandLineTool
id: lofreq_plpsummary.cwl
inputs:
- id: call
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: '| --ref FILE              Indexed reference fasta file (gzip supported) [null]'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '| --out FILE              Vcf output file [- = stdout]'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: '| --region STR            Limit calls to this region (chrom:start-end) [null]'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: '| --bed FILE              List of positions (chr pos) or regions (BED) [null]'
  type: boolean
  inputBinding:
    prefix: -l
- id: q
  doc: '| --min-bq INT            Skip any base with baseQ smaller than INT [6]'
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: '| --min-alt-bq INT        Skip alternate bases with baseQ smaller than INT
    [6]'
  type: boolean
  inputBinding:
    prefix: -Q
- id: r
  doc: '| --def-alt-bq INT        Overwrite baseQs of alternate bases (that passed
    bq filter) with this value (-1: use median ref-bq; 0: keep) [0]'
  type: boolean
  inputBinding:
    prefix: -R
- id: j
  doc: '| --min-jq INT            Skip any base with joinedQ smaller than INT [0]'
  type: boolean
  inputBinding:
    prefix: -j
- id: j
  doc: '| --min-alt-jq INT        Skip alternate bases with joinedQ smaller than INT
    [0]'
  type: boolean
  inputBinding:
    prefix: -J
- id: k
  doc: '| --def-alt-jq INT        Overwrite joinedQs of alternate bases (that passed
    jq filter) with this value (-1: use median ref-bq; 0: keep) [0]'
  type: boolean
  inputBinding:
    prefix: -K
- id: b
  doc: '| --no-baq                Disable use of base-alignment quality (BAQ)'
  type: boolean
  inputBinding:
    prefix: -B
- id: a
  doc: "| --no-idaq               Don't use IDAQ values (NOT recommended under ANY\
    \ circumstances other than debugging)"
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: '| --del-baq               Delete pre-existing BAQ values, i.e. compute even
    if already present in BAM'
  type: boolean
  inputBinding:
    prefix: -D
- id: e
  doc: "| --no-ext-baq            Use 'normal' BAQ (samtools default) instead of extended\
    \ BAQ (both computed on the fly if not already present in lb tag)"
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: '| --min-mq INT            Skip reads with mapping quality smaller than INT
    [0]'
  type: boolean
  inputBinding:
    prefix: -m
- id: m
  doc: '| --max-mq INT            Cap mapping quality at INT [255]'
  type: boolean
  inputBinding:
    prefix: -M
- id: n
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
- id: s
  doc: '| --src-qual              Enable computation of source quality'
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: '| --ign-vcf FILE          Ignore variants in this vcf file for source quality
    computation. Multiple files can be given separated by commas'
  type: boolean
  inputBinding:
    prefix: -S
- id: t
  doc: '| --def-nm-q INT          If >= 0, then replace non-match base qualities with
    this default value [-1]'
  type: boolean
  inputBinding:
    prefix: -T
- id: a
  doc: '| --sig                   P-Value cutoff / significance level [0.010000]'
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: "| --bonf                  Bonferroni factor. 'dynamic' (increase per actually\
    \ performed test) or INT ['dynamic']"
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: '| --min-cov INT           Test only positions having at least this coverage
    [1] (note: without --no-default-filter default filters (incl. coverage) kick in
    after predictions are done)'
  type: boolean
  inputBinding:
    prefix: -C
- id: d
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
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- plpsummary
