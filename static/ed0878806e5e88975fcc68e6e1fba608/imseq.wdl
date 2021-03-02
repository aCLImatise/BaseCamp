version 1.0

task Imseq {
  input {
    File? reference
    File? out_amino
    File? out_nuc
    File? out
    Boolean? reverse
    Int? truncate_reads
    File? reject_log
    File? with_alleles
    Int? v_err_rate
    Int? j_err_rate
    Int? paired_v_error
    Int? v_read_crop
    Int? j_core_length
    Int? j_core_offset
    Int? v_core_length
    Int? v_core_offset
    Int? v_core_errors
    Int? j_core_errors
    Int? min_qual
    Int? min_clust_qual
    Int? min_read_length
    Int? min_cdr_three_length
    Boolean? single_end_fall_back
    Boolean? barcode_vdj
    Int? bc_seq_max_err
    Int? bc_min_qual
    Int? barcode_length
    Int? barcode_err_rate
    Int? barcode_freq_rate
    File? barcode_stats
    File? out_amino_bc
    File? out_nuc_bc
    Boolean? merge_ambiguous_seg
    Boolean? qual_clust
    Boolean? simple_clust
    Int? max_err_hq
    Int? min_sd_diff
    Int? max_err_lq
    Int? max_clust_ratio
    Int? jobs
    Boolean? print_alignments
  }
  command <<<
    imseq \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(out_amino) then ("--out-amino " +  '"' + out_amino + '"') else ""} \
      ~{if defined(out_nuc) then ("--out-nuc " +  '"' + out_nuc + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(truncate_reads) then ("--truncate-reads " +  '"' + truncate_reads + '"') else ""} \
      ~{if defined(reject_log) then ("--reject-log " +  '"' + reject_log + '"') else ""} \
      ~{if (with_alleles) then "--with-alleles" else ""} \
      ~{if defined(v_err_rate) then ("--v-err-rate " +  '"' + v_err_rate + '"') else ""} \
      ~{if defined(j_err_rate) then ("--j-err-rate " +  '"' + j_err_rate + '"') else ""} \
      ~{if defined(paired_v_error) then ("--paired-v-error " +  '"' + paired_v_error + '"') else ""} \
      ~{if defined(v_read_crop) then ("--v-read-crop " +  '"' + v_read_crop + '"') else ""} \
      ~{if defined(j_core_length) then ("--j-core-length " +  '"' + j_core_length + '"') else ""} \
      ~{if defined(j_core_offset) then ("--j-core-offset " +  '"' + j_core_offset + '"') else ""} \
      ~{if defined(v_core_length) then ("--v-core-length " +  '"' + v_core_length + '"') else ""} \
      ~{if defined(v_core_offset) then ("--v-core-offset " +  '"' + v_core_offset + '"') else ""} \
      ~{if defined(v_core_errors) then ("--v-core-errors " +  '"' + v_core_errors + '"') else ""} \
      ~{if defined(j_core_errors) then ("--j-core-errors " +  '"' + j_core_errors + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_clust_qual) then ("--min-clust-qual " +  '"' + min_clust_qual + '"') else ""} \
      ~{if defined(min_read_length) then ("--min-read-length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(min_cdr_three_length) then ("--min-cdr3-length " +  '"' + min_cdr_three_length + '"') else ""} \
      ~{if (single_end_fall_back) then "--single-end-fallback" else ""} \
      ~{if (barcode_vdj) then "--barcode-vdj" else ""} \
      ~{if defined(bc_seq_max_err) then ("--bcseq-max-err " +  '"' + bc_seq_max_err + '"') else ""} \
      ~{if defined(bc_min_qual) then ("--bc-min-qual " +  '"' + bc_min_qual + '"') else ""} \
      ~{if defined(barcode_length) then ("--barcode-length " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(barcode_err_rate) then ("--barcode-err-rate " +  '"' + barcode_err_rate + '"') else ""} \
      ~{if defined(barcode_freq_rate) then ("--barcode-freq-rate " +  '"' + barcode_freq_rate + '"') else ""} \
      ~{if defined(barcode_stats) then ("--barcode-stats " +  '"' + barcode_stats + '"') else ""} \
      ~{if defined(out_amino_bc) then ("--out-amino-bc " +  '"' + out_amino_bc + '"') else ""} \
      ~{if defined(out_nuc_bc) then ("--out-nuc-bc " +  '"' + out_nuc_bc + '"') else ""} \
      ~{if (merge_ambiguous_seg) then "--merge-ambiguous-seg" else ""} \
      ~{if (qual_clust) then "--qual-clust" else ""} \
      ~{if (simple_clust) then "--simple-clust" else ""} \
      ~{if defined(max_err_hq) then ("--max-err-hq " +  '"' + max_err_hq + '"') else ""} \
      ~{if defined(min_sd_diff) then ("--min-sd-diff " +  '"' + min_sd_diff + '"') else ""} \
      ~{if defined(max_err_lq) then ("--max-err-lq " +  '"' + max_err_lq + '"') else ""} \
      ~{if defined(max_clust_ratio) then ("--max-clust-ratio " +  '"' + max_clust_ratio + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (print_alignments) then "--print-alignments" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "FASTA file with gene segment reference sequences."
    out_amino: "Output file path for translated clonotypes."
    out_nuc: "Output file path for untranslated clonotypes."
    out: "Output file path for verbose output per analyzed read."
    reverse: "By default, V-reads are read as they are and V(D)J-reads are reverse\\ncomplemented. Use this switch for the opposite behaviour."
    truncate_reads: "Truncate reads to the specified length. 0 leaves them at their\\noriginal lengths. Default: 0."
    reject_log: "Log file for rejected reads. If empty, no log file is written."
    with_alleles: "Keep allele information in detailed output file specified with -o."
    v_err_rate: "Maximum error rate allowed within the V segment alignment In range\\n[0..inf]. Default: 0.05."
    j_err_rate: "Maximum error rate allowed within the J segment alignment In range\\n[0..inf]. Default: 0.15."
    paired_v_error: "Maximum error rate in the alignment between the forward-read\\nidentified V segment and the reverse read. Default: Use value from\\n-ev. In range [0..1]."
    v_read_crop: "Crop NUM bases from the beginning of the V read before processing it\\nIn range [0..inf]. Default: 0."
    j_core_length: "Length of the J core fragment. In range [5..20]. Default: 12."
    j_core_offset: "Offset of the V core fragment. Default: -6."
    v_core_length: "Length of the V core fragment. Default: Automatically select value\\nbetween 10 and 20 based on minimum observed read length. In range\\n[5..inf]."
    v_core_offset: "Offset of the V core fragment. Default: 0."
    v_core_errors: "Maximum number of errors when matching the V core fragments. In\\nrange [0..inf]. Default: 1."
    j_core_errors: "Maximum number of errors when matching the J core fragments. In\\nrange [0..inf]. Default: 2."
    min_qual: "Minimum average read phred score. In paired end mode, this is\\napplied to both reads. See '-sfb'. In range [0..60]. Default: 30."
    min_clust_qual: "Minimum average cluster phred score. In range [0..60]. Default: 30."
    min_read_length: "Minimum read length. In paired end mode, this is applied to both\\nreads. See '-sfb'. In range [0..inf]. Default: 75."
    min_cdr_three_length: "Minimum CDR3 length in amino acids. In range [0..inf]. Default: 5."
    single_end_fall_back: "Fall back to single end analysis based on VDJ read if V read fails\\n-mq or -mrl."
    barcode_vdj: "In paired end mode: Read the barcode from the VDJ read instead of\\nthe V read."
    bc_seq_max_err: "Maximum number of errors allowed in the barcode sequence In range\\n[0..inf]. Default: 1."
    bc_min_qual: "Minimum per base quality in molecular barcode region In range\\n[0..60]. Default: 30."
    barcode_length: "Length of random barcode at the beginning of the read. A value of\\n'0' disables barcode based correction. In range [0..inf]. Default:\\n0."
    barcode_err_rate: "Maximum error rate between reads in order to be merged based on\\nbarcode sequence In range [0..1]. Default: 0.05."
    barcode_freq_rate: "Inclusive maximum frequency ratio between smaller and larger cluster\\nduring barcode clustering In range [0..1]. Default: 0.2."
    barcode_stats: "Path to barcode stats output file. If empty, no file is written.\\nIgnored if -bcl is 0."
    out_amino_bc: "Output file path for translated clonotypes with barcode corrected\\ncounts. Ignored if -bcl is 0."
    out_nuc_bc: "Output file path for untranslated clonotypes with barcode corrected\\ncounts. Ignored if -bcl is 0."
    merge_ambiguous_seg: "Merge clonotypes with identical CDR3 sequences separated by\\nambiguous segment identification"
    qual_clust: "Enable quality score based clustering."
    simple_clust: "Enable simple distance-based clustering"
    max_err_hq: "Maximum edit-distance for two clusters to be clustered without low\\nquality correlation In range [0..inf]. Default: 4."
    min_sd_diff: "How many standard deviations must an error positions quality value\\nbe below the mean to be considered for clustering. Default: 1."
    max_err_lq: "Maximum edit-distance for two clusters to be potentially clustered\\nwithout low quality correlation In range [0..inf]. Default: 2."
    max_clust_ratio: "Maximum abundance ratio for two clonotypes to be clustered In range\\n[0..1]. Default: 1."
    jobs: "Number of parallel jobs (threads). Default: 1."
    print_alignments: "Print the V/J alignments for each read. Implies -j 1."
  }
  output {
    File out_stdout = stdout()
    File out_out_amino = "${in_out_amino}"
    File out_out_nuc = "${in_out_nuc}"
    File out_out = "${in_out}"
    File out_with_alleles = "${in_with_alleles}"
    File out_barcode_stats = "${in_barcode_stats}"
    File out_out_amino_bc = "${in_out_amino_bc}"
    File out_out_nuc_bc = "${in_out_nuc_bc}"
  }
}