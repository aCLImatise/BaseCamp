class: CommandLineTool
id: lofreq_somatic.cwl
inputs:
- id: verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: normal
  doc: Normal BAM file
  type: string
  inputBinding:
    prefix: --normal
- id: tumor
  doc: Tumor BAM file
  type: string
  inputBinding:
    prefix: --tumor
- id: out_prefix
  doc: Prefix for output files
  type: string
  inputBinding:
    prefix: --outprefix
- id: ref
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --ref
- id: bed
  doc: BED file listing regions to restrict analysis to
  type: string
  inputBinding:
    prefix: --bed
- id: dbsnp
  doc: vcf-file (bgzipped and index with tabix) containing known germline variants
    (e.g. dbsnp for human
  type: string
  inputBinding:
    prefix: --dbsnp
- id: threads
  doc: Use this many threads for each call
  type: string
  inputBinding:
    prefix: --threads
- id: tumor_mtc
  doc: 'Type of multiple testing correction for tumor (default: bonf)'
  type: string
  inputBinding:
    prefix: --tumor-mtc
- id: tumor_mtc_alpha
  doc: 'Multiple testing correction alpha for tumor (default: 1.000000)'
  type: string
  inputBinding:
    prefix: --tumor-mtc-alpha
- id: in_del_tumor_mtc
  doc: 'Type of multiple testing correction for tumor (default: bonf)'
  type: string
  inputBinding:
    prefix: --indel-tumor-mtc
- id: in_del_tumor_mtc_alpha
  doc: 'Multiple testing correction alpha for tumor (default: 0.010000)'
  type: string
  inputBinding:
    prefix: --indel-tumor-mtc-alpha
- id: call_indels
  doc: Also call indels (see documentation on how to preprocess your BAM files)
  type: boolean
  inputBinding:
    prefix: --call-indels
- id: min_cov
  doc: 'Minimum coverage for somatic calls (default: 7)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: germline
  doc: Also list germline calls in separate file
  type: boolean
  inputBinding:
    prefix: --germline
- id: ign_vcf
  doc: Ignore variants in this vcf-file for source quality computation in tumor (collides
    with --no-src-qual). Default is to use (stringently filtered) predictions in normal
    sample
  type: string
  inputBinding:
    prefix: --ign-vcf
- id: use_orphan
  doc: Use orphaned/anomalous reads from pairs in all samples
  type: boolean
  inputBinding:
    prefix: --use-orphan
- id: baq_off
  doc: Switch use of BAQ off in all samples
  type: boolean
  inputBinding:
    prefix: --baq-off
- id: call_rlx_extra_args
  doc: Extra arguments to call_rlx (replace dashes with @)
  type: string
  inputBinding:
    prefix: --call-rlx-extra-args
- id: no_src_qual
  doc: Disable use of source quality in tumor (see also -V)
  type: boolean
  inputBinding:
    prefix: --no-src-qual
- id: debug
  doc: Enable debugging
  type: boolean
  inputBinding:
    prefix: --debug
- id: continue
  doc: continue interrupted run. Will reuse existing files, assuming they are complete
    and created with identical options!
  type: boolean
  inputBinding:
    prefix: --continue
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- somatic
