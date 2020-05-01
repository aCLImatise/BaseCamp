#!/usr/bin/env cwl-runner

baseCommand:
- cuteSV
class: CommandLineTool
cwlVersion: v1.0
id: cutesv
inputs:
- doc: Output VCF format file.
  id: output
  inputBinding:
    position: 0
  type: string
- doc: Work-directory for distributed jobs
  id: work_dir
  inputBinding:
    position: 1
  type: string
- doc: '100'
  id: max_cluster_bias_ins
  inputBinding:
    prefix: --max_cluster_bias_INS
  type: boolean
- doc: '0.2'
  id: diff_ratio_merging_ins
  inputBinding:
    prefix: --diff_ratio_merging_INS
  type: boolean
- doc: '0.6'
  id: diff_ratio_filtering_ins
  inputBinding:
    prefix: --diff_ratio_filtering_INS
  type: boolean
- doc: '0.7'
  id: diff_ratio_filtering_del
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
  type: boolean
- doc: '200'
  id: max_cluster_bias_ins
  inputBinding:
    prefix: --max_cluster_bias_INS
  type: boolean
- doc: '0.65'
  id: diff_ratio_merging_ins
  inputBinding:
    prefix: --diff_ratio_merging_INS
  type: boolean
- doc: '0.65'
  id: diff_ratio_filtering_ins
  inputBinding:
    prefix: --diff_ratio_filtering_INS
  type: boolean
- doc: '0.35'
  id: diff_ratio_filtering_del
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
  type: boolean
- doc: Number of threads to use.[16]
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Batch of genome segmentation interval.[10000000]
  id: batches
  inputBinding:
    prefix: --batches
  type: string
- doc: Sample name/id
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: Maximum number of split segments a read may be aligned before it is ignored.[7]
  id: max_split_parts
  inputBinding:
    prefix: --max_split_parts
  type: long
- doc: Minimum mapping quality value of alignment to be taken into account.[20]
  id: min_mapq
  inputBinding:
    prefix: --min_mapq
  type: long
- doc: Ignores reads that only report alignments with not longer than bp.[500]
  id: min_read_len
  inputBinding:
    prefix: --min_read_len
  type: long
- doc: Maximum distance of deletion signals to be merged.[0]
  id: merge_del_threshold
  inputBinding:
    prefix: --merge_del_threshold
  type: string
- doc: Maximum distance of insertion signals to be merged.[100]
  id: merge_ins_threshold
  inputBinding:
    prefix: --merge_ins_threshold
  type: string
- doc: Minimum number of reads that support a SV to be reported.[10]
  id: min_support
  inputBinding:
    prefix: --min_support
  type: long
- doc: Minimum size of SV to be reported.[30]
  id: min_size
  inputBinding:
    prefix: --min_size
  type: long
- doc: Maximum size of SV to be reported.[100000]
  id: max_size
  inputBinding:
    prefix: --max_size
  type: long
- doc: Minimum length of SV signal to be extracted.[10]
  id: min_sig_length
  inputBinding:
    prefix: --min_siglength
  type: long
- doc: Enable to generate genotypes.
  id: genotype
  inputBinding:
    prefix: --genotype
  type: boolean
- doc: Threshold on allele frequency for homozygous.[0.8]
  id: hom
  inputBinding:
    prefix: --hom
  type: string
- doc: Threshold on allele frequency for heterozygous.[0.2].
  id: het
  inputBinding:
    prefix: --het
  type: string
- doc: Maximum distance to cluster read together for insertion.[100]
  id: max_cluster_bias_ins
  inputBinding:
    prefix: --max_cluster_bias_INS
  type: long
- doc: Do not merge breakpoints with basepair identity more than [0.2] for insertion.
  id: diff_ratio_merging_ins
  inputBinding:
    prefix: --diff_ratio_merging_INS
  type: string
- doc: Filter breakpoints with basepair identity less than [0.6] for insertion.
  id: diff_ratio_filtering_ins
  inputBinding:
    prefix: --diff_ratio_filtering_INS
  type: string
- doc: Maximum distance to cluster read together for deletion.[200]
  id: max_cluster_bias_del
  inputBinding:
    prefix: --max_cluster_bias_DEL
  type: long
- doc: Do not merge breakpoints with basepair identity more than [0.3] for deletion.
  id: diff_ratio_merging_del
  inputBinding:
    prefix: --diff_ratio_merging_DEL
  type: string
- doc: Filter breakpoints with basepair identity less than [0.7] for deletion.
  id: diff_ratio_filtering_del
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
  type: string
- doc: Maximum distance to cluster read together for inversion.[500]
  id: max_cluster_bias_in_v
  inputBinding:
    prefix: --max_cluster_bias_INV
  type: long
- doc: Maximum distance to cluster read together for duplication.[500]
  id: max_cluster_bias_dup
  inputBinding:
    prefix: --max_cluster_bias_DUP
  type: long
- doc: Maximum distance to cluster read together for translocation.[50]
  id: max_cluster_bias_tra
  inputBinding:
    prefix: --max_cluster_bias_TRA
  type: long
- doc: Filter breakpoints with basepair identity less than [0.6] for translocation.
  id: diff_ratio_filtering_tra
  inputBinding:
    prefix: --diff_ratio_filtering_TRA
  type: string
