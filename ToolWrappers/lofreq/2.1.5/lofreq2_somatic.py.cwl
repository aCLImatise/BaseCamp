class: CommandLineTool
id: lofreq2_somatic.py.cwl
inputs:
- id: in_verbose
  doc: Be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_normal
  doc: Normal BAM file
  type: File?
  inputBinding:
    prefix: --normal
- id: in_tumor
  doc: Tumor BAM file
  type: File?
  inputBinding:
    prefix: --tumor
- id: in_out_prefix
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --outprefix
- id: in_ref
  doc: Reference fasta file
  type: File?
  inputBinding:
    prefix: --ref
- id: in_bed
  doc: BED file listing regions to restrict analysis to
  type: File?
  inputBinding:
    prefix: --bed
- id: in_dbsnp
  doc: "vcf-file (bgzipped and index with tabix) containing\nknown germline variants\
    \ (e.g. dbsnp for human"
  type: File?
  inputBinding:
    prefix: --dbsnp
- id: in_threads
  doc: Use this many threads for each call
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tumor_mtc
  doc: "Type of multiple testing correction for tumor\n(default: bonf)"
  type: string?
  inputBinding:
    prefix: --tumor-mtc
- id: in_tumor_mtc_alpha
  doc: "Multiple testing correction alpha for tumor (default:\n1.000000)"
  type: double?
  inputBinding:
    prefix: --tumor-mtc-alpha
- id: in_in_del_tumor_mtc
  doc: "Type of multiple testing correction for tumor\n(default: bonf)"
  type: string?
  inputBinding:
    prefix: --indel-tumor-mtc
- id: in_in_del_tumor_mtc_alpha
  doc: "Multiple testing correction alpha for tumor (default:\n0.010000)"
  type: double?
  inputBinding:
    prefix: --indel-tumor-mtc-alpha
- id: in_call_indels
  doc: "Also call indels (see documentation on how to\npreprocess your BAM files)"
  type: boolean?
  inputBinding:
    prefix: --call-indels
- id: in_min_cov
  doc: 'Minimum coverage for somatic calls (default: 7)'
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_germline
  doc: Also list germline calls in separate file
  type: boolean?
  inputBinding:
    prefix: --germline
- id: in_ign_vcf
  doc: "Ignore variants in this vcf-file for source quality\ncomputation in tumor\
    \ (collides with --no-src-qual).\nDefault is to use (stringently filtered) predictions\n\
    in normal sample"
  type: File?
  inputBinding:
    prefix: --ign-vcf
- id: in_use_orphan
  doc: Use orphaned/anomalous reads from pairs in all samples
  type: boolean?
  inputBinding:
    prefix: --use-orphan
- id: in_baq_off
  doc: Switch use of BAQ off in all samples
  type: boolean?
  inputBinding:
    prefix: --baq-off
- id: in_call_rlx_extra_args
  doc: Extra arguments to call_rlx (replace dashes with @)
  type: string?
  inputBinding:
    prefix: --call-rlx-extra-args
- id: in_no_src_qual
  doc: Disable use of source quality in tumor (see also -V)
  type: boolean?
  inputBinding:
    prefix: --no-src-qual
- id: in_debug
  doc: Enable debugging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_continue
  doc: "continue interrupted run. Will reuse existing files,\nassuming they are complete\
    \ and created with identical\noptions!\n"
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_lo_freq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_somatic
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq2_somatic.py
