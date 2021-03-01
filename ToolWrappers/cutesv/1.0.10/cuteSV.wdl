version 1.0

task CuteSV {
  input {
    Int? threads
    Int? batches
    String? sample
    Boolean? retain_work_dir
    Boolean? report_read_id
    Int? max_split_parts
    Int? min_mapq
    Int? min_read_len
    Int? merge_del_threshold
    Int? merge_ins_threshold
    Int? min_support
    Int? min_size
    Int? max_size
    Int? min_sig_length
    Boolean? genotype
    Int? gt_round
    File? ivcf
    Int? max_cluster_bias_ins
    Float? diff_ratio_merging_ins
    Int? max_cluster_bias_del
    Float? diff_ratio_merging_del
    Int? max_cluster_bias_in_v
    Int? max_cluster_bias_dup
    Int? max_cluster_bias_tra
    Float? diff_ratio_filtering_tra
    String reference
    String output_vcf_format
    String work_dir
  }
  command <<<
    cuteSV \
      ~{reference} \
      ~{output_vcf_format} \
      ~{work_dir} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(batches) then ("--batches " +  '"' + batches + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (retain_work_dir) then "--retain_work_dir" else ""} \
      ~{if (report_read_id) then "--report_readid" else ""} \
      ~{if defined(max_split_parts) then ("--max_split_parts " +  '"' + max_split_parts + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_read_len) then ("--min_read_len " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(merge_del_threshold) then ("--merge_del_threshold " +  '"' + merge_del_threshold + '"') else ""} \
      ~{if defined(merge_ins_threshold) then ("--merge_ins_threshold " +  '"' + merge_ins_threshold + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if defined(min_size) then ("--min_size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max_size " +  '"' + max_size + '"') else ""} \
      ~{if defined(min_sig_length) then ("--min_siglength " +  '"' + min_sig_length + '"') else ""} \
      ~{if (genotype) then "--genotype" else ""} \
      ~{if defined(gt_round) then ("--gt_round " +  '"' + gt_round + '"') else ""} \
      ~{if defined(ivcf) then ("-Ivcf " +  '"' + ivcf + '"') else ""} \
      ~{if defined(max_cluster_bias_ins) then ("--max_cluster_bias_INS " +  '"' + max_cluster_bias_ins + '"') else ""} \
      ~{if defined(diff_ratio_merging_ins) then ("--diff_ratio_merging_INS " +  '"' + diff_ratio_merging_ins + '"') else ""} \
      ~{if defined(max_cluster_bias_del) then ("--max_cluster_bias_DEL " +  '"' + max_cluster_bias_del + '"') else ""} \
      ~{if defined(diff_ratio_merging_del) then ("--diff_ratio_merging_DEL " +  '"' + diff_ratio_merging_del + '"') else ""} \
      ~{if defined(max_cluster_bias_in_v) then ("--max_cluster_bias_INV " +  '"' + max_cluster_bias_in_v + '"') else ""} \
      ~{if defined(max_cluster_bias_dup) then ("--max_cluster_bias_DUP " +  '"' + max_cluster_bias_dup + '"') else ""} \
      ~{if defined(max_cluster_bias_tra) then ("--max_cluster_bias_TRA " +  '"' + max_cluster_bias_tra + '"') else ""} \
      ~{if defined(diff_ratio_filtering_tra) then ("--diff_ratio_filtering_TRA " +  '"' + diff_ratio_filtering_tra + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cutesv:1.0.10--py_0"
  }
  parameter_meta {
    threads: "Number of threads to use.[16]"
    batches: "Batch of genome segmentation interval.[10000000]"
    sample: "Sample name/id"
    retain_work_dir: "Enable to retain temporary folder and files."
    report_read_id: "Enable to report supporting read ids for each SV."
    max_split_parts: "Maximum number of split segments a read may be aligned\\nbefore it is ignored.[7]"
    min_mapq: "Minimum mapping quality value of alignment to be taken\\ninto account.[20]"
    min_read_len: "Ignores reads that only report alignments with not\\nlonger than bp.[500]"
    merge_del_threshold: "Maximum distance of deletion signals to be merged. In\\nour paper, I used -md 500 to process HG002 real human\\nsample data.[0]"
    merge_ins_threshold: "Maximum distance of insertion signals to be merged. In\\nour paper, I used -mi 500 to process HG002 real human\\nsample data.[100]"
    min_support: "Minimum number of reads that support a SV to be\\nreported.[10]"
    min_size: "Minimum size of SV to be reported.[30]"
    max_size: "Maximum size of SV to be reported.[100000]"
    min_sig_length: "Minimum length of SV signal to be extracted.[10]"
    genotype: "Enable to generate genotypes."
    gt_round: "Maximum round of iteration for alignments searching if\\nperform genotyping.[500]"
    ivcf: "Optional given vcf file. Enable to perform force\\ncalling. [NULL]"
    max_cluster_bias_ins: "Maximum distance to cluster read together for\\ninsertion.[100]"
    diff_ratio_merging_ins: "Do not merge breakpoints with basepair identity more\\nthan [0.3] for insertion."
    max_cluster_bias_del: "Maximum distance to cluster read together for\\ndeletion.[200]"
    diff_ratio_merging_del: "Do not merge breakpoints with basepair identity more\\nthan [0.5] for deletion."
    max_cluster_bias_in_v: "Maximum distance to cluster read together for\\ninversion.[500]"
    max_cluster_bias_dup: "Maximum distance to cluster read together for\\nduplication.[500]"
    max_cluster_bias_tra: "Maximum distance to cluster read together for\\ntranslocation.[50]"
    diff_ratio_filtering_tra: "Filter breakpoints with basepair identity less than\\n[0.6] for translocation.\\n"
    reference: "The reference genome in fasta format."
    output_vcf_format: "Output VCF format file."
    work_dir: "Work-directory for distributed jobs"
  }
  output {
    File out_stdout = stdout()
  }
}