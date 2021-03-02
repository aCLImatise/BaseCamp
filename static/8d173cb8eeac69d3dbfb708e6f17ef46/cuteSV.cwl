class: CommandLineTool
id: cuteSV.cwl
inputs:
- id: in_threads
  doc: Number of threads to use.[16]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_batches
  doc: Batch of genome segmentation interval.[10000000]
  type: long?
  inputBinding:
    prefix: --batches
- id: in_sample
  doc: Sample name/id
  type: string?
  inputBinding:
    prefix: --sample
- id: in_retain_work_dir
  doc: Enable to retain temporary folder and files.
  type: boolean?
  inputBinding:
    prefix: --retain_work_dir
- id: in_max_split_parts
  doc: "Maximum number of split segments a read may be aligned\nbefore it is ignored.[7]"
  type: long?
  inputBinding:
    prefix: --max_split_parts
- id: in_min_mapq
  doc: "Minimum mapping quality value of alignment to be taken\ninto account.[20]"
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_min_read_len
  doc: "Ignores reads that only report alignments with not\nlonger than bp.[500]"
  type: long?
  inputBinding:
    prefix: --min_read_len
- id: in_merge_del_threshold
  doc: Maximum distance of deletion signals to be merged.[0]
  type: long?
  inputBinding:
    prefix: --merge_del_threshold
- id: in_merge_ins_threshold
  doc: "Maximum distance of insertion signals to be\nmerged.[100]"
  type: long?
  inputBinding:
    prefix: --merge_ins_threshold
- id: in_min_support
  doc: "Minimum number of reads that support a SV to be\nreported.[10]"
  type: long?
  inputBinding:
    prefix: --min_support
- id: in_min_size
  doc: Minimum size of SV to be reported.[30]
  type: long?
  inputBinding:
    prefix: --min_size
- id: in_max_size
  doc: Maximum size of SV to be reported.[100000]
  type: long?
  inputBinding:
    prefix: --max_size
- id: in_min_sig_length
  doc: Minimum length of SV signal to be extracted.[10]
  type: long?
  inputBinding:
    prefix: --min_siglength
- id: in_genotype
  doc: Enable to generate genotypes.
  type: boolean?
  inputBinding:
    prefix: --genotype
- id: in_gt_round
  doc: "Maximum round of iteration for alignments searching if\nperform genotyping.[500]"
  type: long?
  inputBinding:
    prefix: --gt_round
- id: in_max_cluster_bias_ins
  doc: "Maximum distance to cluster read together for\ninsertion.[100]"
  type: long?
  inputBinding:
    prefix: --max_cluster_bias_INS
- id: in_diff_ratio_merging_ins
  doc: "Do not merge breakpoints with basepair identity more\nthan [0.2] for insertion."
  type: double?
  inputBinding:
    prefix: --diff_ratio_merging_INS
- id: in_diff_ratio_filtering_ins
  doc: "Filter breakpoints with basepair identity less than\n[0.6] for insertion."
  type: double?
  inputBinding:
    prefix: --diff_ratio_filtering_INS
- id: in_max_cluster_bias_del
  doc: "Maximum distance to cluster read together for\ndeletion.[200]"
  type: long?
  inputBinding:
    prefix: --max_cluster_bias_DEL
- id: in_diff_ratio_merging_del
  doc: "Do not merge breakpoints with basepair identity more\nthan [0.3] for deletion."
  type: double?
  inputBinding:
    prefix: --diff_ratio_merging_DEL
- id: in_diff_ratio_filtering_del
  doc: "Filter breakpoints with basepair identity less than\n[0.7] for deletion."
  type: double?
  inputBinding:
    prefix: --diff_ratio_filtering_DEL
- id: in_max_cluster_bias_in_v
  doc: "Maximum distance to cluster read together for\ninversion.[500]"
  type: long?
  inputBinding:
    prefix: --max_cluster_bias_INV
- id: in_max_cluster_bias_dup
  doc: "Maximum distance to cluster read together for\nduplication.[500]"
  type: long?
  inputBinding:
    prefix: --max_cluster_bias_DUP
- id: in_max_cluster_bias_tra
  doc: "Maximum distance to cluster read together for\ntranslocation.[50]"
  type: long?
  inputBinding:
    prefix: --max_cluster_bias_TRA
- id: in_diff_ratio_filtering_tra
  doc: "Filter breakpoints with basepair identity less than\n[0.6] for translocation.\n"
  type: double?
  inputBinding:
    prefix: --diff_ratio_filtering_TRA
- id: in_output
  doc: Output VCF format file.
  type: string
  inputBinding:
    position: 0
- id: in_work_dir
  doc: Work-directory for distributed jobs
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
- cuteSV
