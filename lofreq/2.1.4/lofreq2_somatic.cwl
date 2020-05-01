#!/usr/bin/env cwl-runner

baseCommand:
- lofreq2_somatic.py
class: CommandLineTool
cwlVersion: v1.0
id: lofreq2_somatic.py
inputs:
- doc: Be verbose
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Normal BAM file
  id: normal
  inputBinding:
    prefix: --normal
  type: string
- doc: Tumor BAM file
  id: tumor
  inputBinding:
    prefix: --tumor
  type: string
- doc: Prefix for output files
  id: out_prefix
  inputBinding:
    prefix: --outprefix
  type: string
- doc: Reference fasta file
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: BED file listing regions to restrict analysis to
  id: bed
  inputBinding:
    prefix: --bed
  type: string
- doc: vcf-file (bgzipped and index with tabix) containing known germline variants
    (e.g. dbsnp for human
  id: dbsnp
  inputBinding:
    prefix: --dbsnp
  type: string
- doc: Use this many threads for each call
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Type of multiple testing correction for tumor (default: bonf)'
  id: tumor_mtc
  inputBinding:
    prefix: --tumor-mtc
  type: string
- doc: 'Multiple testing correction alpha for tumor (default: 1.000000)'
  id: tumor_mtc_alpha
  inputBinding:
    prefix: --tumor-mtc-alpha
  type: string
- doc: 'Type of multiple testing correction for tumor (default: bonf)'
  id: in_del_tumor_mtc
  inputBinding:
    prefix: --indel-tumor-mtc
  type: string
- doc: 'Multiple testing correction alpha for tumor (default: 0.010000)'
  id: in_del_tumor_mtc_alpha
  inputBinding:
    prefix: --indel-tumor-mtc-alpha
  type: string
- doc: Also call indels (see documentation on how to preprocess your BAM files)
  id: call_indels
  inputBinding:
    prefix: --call-indels
  type: boolean
- doc: 'Minimum coverage for somatic calls (default: 7)'
  id: min_cov
  inputBinding:
    prefix: --min-cov
  type: long
- doc: Also list germline calls in separate file
  id: germline
  inputBinding:
    prefix: --germline
  type: boolean
- doc: Ignore variants in this vcf-file for source quality computation in tumor (collides
    with --no-src-qual). Default is to use (stringently filtered) predictions in normal
    sample
  id: ign_vcf
  inputBinding:
    prefix: --ign-vcf
  type: string
- doc: Use orphaned/anomalous reads from pairs in all samples
  id: use_orphan
  inputBinding:
    prefix: --use-orphan
  type: boolean
- doc: Switch use of BAQ off in all samples
  id: baq_off
  inputBinding:
    prefix: --baq-off
  type: boolean
- doc: Extra arguments to call_rlx (replace dashes with @)
  id: call_rlx_extra_args
  inputBinding:
    prefix: --call-rlx-extra-args
  type: string
- doc: Disable use of source quality in tumor (see also -V)
  id: no_src_qual
  inputBinding:
    prefix: --no-src-qual
  type: boolean
- doc: Enable debugging
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: continue interrupted run. Will reuse existing files, assuming they are complete
    and created with identical options!
  id: continue
  inputBinding:
    prefix: --continue
  type: boolean
