class: CommandLineTool
id: cuteSV.cwl
inputs:
- id: output
  doc: Output VCF format file.
  type: string
  inputBinding:
    position: 0
- id: work_dir
  doc: Work-directory for distributed jobs
  type: string
  inputBinding:
    position: 1
- id: max_cluster_bias_ins
  doc: '100'
  type: boolean
  inputBinding:
    prefix: --max_cluster_bias_INS
- id: diff_ratio_merging_ins
  doc: '0.2'
  type: boolean
  inputBinding:
    prefix: --diff_ratio_merging_INS
- id: diff_ratio_filtering_ins
  doc: '0.6'
  type: boolean
  inputBinding:
    prefix: --diff_ratio_filtering_INS
- id: diff_ratio_filtering_del
  doc: '0.7'
  type: boolean
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
- id: max_cluster_bias_ins
  doc: '200'
  type: boolean
  inputBinding:
    prefix: --max_cluster_bias_INS
- id: diff_ratio_merging_ins
  doc: '0.65'
  type: boolean
  inputBinding:
    prefix: --diff_ratio_merging_INS
- id: diff_ratio_filtering_ins
  doc: '0.65'
  type: boolean
  inputBinding:
    prefix: --diff_ratio_filtering_INS
- id: diff_ratio_filtering_del
  doc: '0.35'
  type: boolean
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
- id: threads
  doc: Number of threads to use.[16]
  type: string
  inputBinding:
    prefix: --threads
- id: batches
  doc: Batch of genome segmentation interval.[10000000]
  type: string
  inputBinding:
    prefix: --batches
- id: sample
  doc: Sample name/id
  type: string
  inputBinding:
    prefix: --sample
- id: max_split_parts
  doc: Maximum number of split segments a read may be aligned before it is ignored.[7]
  type: long
  inputBinding:
    prefix: --max_split_parts
- id: min_mapq
  doc: Minimum mapping quality value of alignment to be taken into account.[20]
  type: long
  inputBinding:
    prefix: --min_mapq
- id: min_read_len
  doc: Ignores reads that only report alignments with not longer than bp.[500]
  type: long
  inputBinding:
    prefix: --min_read_len
- id: merge_del_threshold
  doc: Maximum distance of deletion signals to be merged.[0]
  type: string
  inputBinding:
    prefix: --merge_del_threshold
- id: merge_ins_threshold
  doc: Maximum distance of insertion signals to be merged.[100]
  type: string
  inputBinding:
    prefix: --merge_ins_threshold
- id: min_support
  doc: Minimum number of reads that support a SV to be reported.[10]
  type: long
  inputBinding:
    prefix: --min_support
- id: min_size
  doc: Minimum size of SV to be reported.[30]
  type: long
  inputBinding:
    prefix: --min_size
- id: max_size
  doc: Maximum size of SV to be reported.[100000]
  type: long
  inputBinding:
    prefix: --max_size
- id: min_sig_length
  doc: Minimum length of SV signal to be extracted.[10]
  type: long
  inputBinding:
    prefix: --min_siglength
- id: genotype
  doc: Enable to generate genotypes.
  type: boolean
  inputBinding:
    prefix: --genotype
- id: hom
  doc: Threshold on allele frequency for homozygous.[0.8]
  type: string
  inputBinding:
    prefix: --hom
- id: het
  doc: Threshold on allele frequency for heterozygous.[0.2].
  type: string
  inputBinding:
    prefix: --het
- id: max_cluster_bias_ins
  doc: Maximum distance to cluster read together for insertion.[100]
  type: long
  inputBinding:
    prefix: --max_cluster_bias_INS
- id: diff_ratio_merging_ins
  doc: Do not merge breakpoints with basepair identity more than [0.2] for insertion.
  type: string
  inputBinding:
    prefix: --diff_ratio_merging_INS
- id: diff_ratio_filtering_ins
  doc: Filter breakpoints with basepair identity less than [0.6] for insertion.
  type: string
  inputBinding:
    prefix: --diff_ratio_filtering_INS
- id: max_cluster_bias_del
  doc: Maximum distance to cluster read together for deletion.[200]
  type: long
  inputBinding:
    prefix: --max_cluster_bias_DEL
- id: diff_ratio_merging_del
  doc: Do not merge breakpoints with basepair identity more than [0.3] for deletion.
  type: string
  inputBinding:
    prefix: --diff_ratio_merging_DEL
- id: diff_ratio_filtering_del
  doc: Filter breakpoints with basepair identity less than [0.7] for deletion.
  type: string
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
- id: max_cluster_bias_in_v
  doc: Maximum distance to cluster read together for inversion.[500]
  type: long
  inputBinding:
    prefix: --max_cluster_bias_INV
- id: max_cluster_bias_dup
  doc: Maximum distance to cluster read together for duplication.[500]
  type: long
  inputBinding:
    prefix: --max_cluster_bias_DUP
- id: max_cluster_bias_tra
  doc: Maximum distance to cluster read together for translocation.[50]
  type: long
  inputBinding:
    prefix: --max_cluster_bias_TRA
- id: diff_ratio_filtering_tra
  doc: Filter breakpoints with basepair identity less than [0.6] for translocation.
  type: string
  inputBinding:
    prefix: --diff_ratio_filtering_TRA
outputs: []
cwlVersion: v1.1
baseCommand:
- cuteSV
