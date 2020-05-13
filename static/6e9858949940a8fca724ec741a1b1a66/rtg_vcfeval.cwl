class: CommandLineTool
id: rtg_vcfeval.cwl
inputs:
- id: baseline
  doc: VCF file containing baseline variants
  type: File
  inputBinding:
    prefix: --baseline
- id: bed_regions
  doc: if set, only read VCF records that overlap the ranges contained in the specified
    BED file
  type: File
  inputBinding:
    prefix: --bed-regions
- id: calls
  doc: VCF file containing called variants
  type: File
  inputBinding:
    prefix: --calls
- id: evaluation_regions
  doc: if set, evaluate within regions contained in the supplied BED file, allowing
    transborder matches. To be used for truth-set high-confidence regions or other
    regions of interest where region boundary effects should be minimized
  type: File
  inputBinding:
    prefix: --evaluation-regions
- id: output
  doc: directory for output
  type: string
  inputBinding:
    prefix: --output
- id: region
  doc: if set, only read VCF records within the specified range. The format is one
    of <sequence_name>, <sequence_name>:<start>-<end>, <sequence_name>:<pos>+<length>
    or <sequence_name>:<pos>~<padding>
  type: string
  inputBinding:
    prefix: --region
- id: template
  doc: SDF of the reference genome the variants are called against
  type: string
  inputBinding:
    prefix: --template
- id: all_records
  doc: use all records regardless of FILTER status (Default is to only process records
    where FILTER is "." or "PASS")
  type: boolean
  inputBinding:
    prefix: --all-records
- id: decompose
  doc: decompose complex variants into smaller constituents to allow partial credit
  type: boolean
  inputBinding:
    prefix: --decompose
- id: ref_overlap
  doc: allow alleles to overlap where bases of either allele are same-as-ref (Default
    is to only allow VCF anchor base overlap)
  type: boolean
  inputBinding:
    prefix: --ref-overlap
- id: sample
  doc: the name of the sample to select. Use <baseline_sample>,<calls_sample> to select
    different sample names for baseline and calls. (Required when using multi-sample
    VCF files)
  type: string
  inputBinding:
    prefix: --sample
- id: squash_ploidy
  doc: treat heterozygous genotypes as homozygous ALT in both baseline and calls,
    to allow matches that ignore zygosity differences
  type: boolean
  inputBinding:
    prefix: --squash-ploidy
- id: at_precision
  doc: output summary statistics where precision >= supplied value (Default is to
    summarize at maximum F-measure)
  type: double
  inputBinding:
    prefix: --at-precision
- id: at_sensitivity
  doc: output summary statistics where sensitivity >= supplied value (Default is to
    summarize at maximum F-measure)
  type: double
  inputBinding:
    prefix: --at-sensitivity
- id: no_roc
  doc: do not produce ROCs
  type: boolean
  inputBinding:
    prefix: --no-roc
- id: output_mode
  doc: output reporting mode. Allowed values are [split, annotate, combine, ga4gh,
    roc-only] (Default is split)
  type: string
  inputBinding:
    prefix: --output-mode
- id: sort_order
  doc: the order in which to sort the ROC scores so that "good" scores come before
    "bad" scores. Allowed values are [ascending, descending] (Default is descending)
  type: string
  inputBinding:
    prefix: --sort-order
- id: vcf_score_field
  doc: the name of the VCF FORMAT field to use as the ROC score. Also valid are "QUAL",
    "INFO.<name>" or "FORMAT.<name>" to select the named VCF FORMAT or INFO field
    (Default is GQ)
  type: string
  inputBinding:
    prefix: --vcf-score-field
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: threads
  doc: number of threads (Default is the number of available cores)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- vcfeval
